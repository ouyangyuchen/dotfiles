vim.cmd[[
set completeopt=noselect,menuone
set pumheight=10
snoremap j <bs>ij
snoremap k <bs>ik
snoremap p <bs>ip
snoremap x <bs>ix
]]

local luasnip = require('luasnip')
require('luasnip.loaders.from_vscode').lazy_load()

local cmp = require('cmp')
cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    -- { name = 'buffer' },
    { name = 'path' }
  },
  formatting = {
    fields = { 'abbr', 'kind' },
    format = require('lspkind').cmp_format({
      mode = 'symbol_text',
      maxwidth = 50,
      ellipsis_char = '...',
    }),
  },
  mapping = {
    ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),

    ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
    ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),

    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    ["<CR>"] = cmp.mapping.confirm { select = true },

    -- hit <Tab>:
    -- complete current snippet (panel is visible)
    -- jump to next position (panel is not visible)
    ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.confirm({ select = true })
        elseif luasnip.expand_or_locally_jumpable() then
          luasnip.expand_or_jump()
        else
          fallback()
        end
      end,
      { "i", "s", }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
        if luasnip.locally_jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end,
      { "i", "s", }),
  },
}
