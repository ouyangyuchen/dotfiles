local null_ls = require('null-ls')
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

-- builtin-sources: https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md
null_ls.setup({
  sources = {
    -- c, cpp
    formatting.clang_format,

    -- python
    formatting.black,

    -- lua
    formatting.stylua,

    -- markdown
    diagnostics.markdownlint,
  },
})
