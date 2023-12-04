local actions = require("telescope.actions")
require("telescope").setup {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<C-c>"] = actions.close,
        ["<C-/>"] = actions.which_key,
      },
      n = {
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,
        ["<?>"] = actions.which_key,
      },
    }
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false,
    },
    live_grep = {
      theme = "ivy",
    },
    grep_string = {
      theme = "ivy",
    },
    buffers = {
      theme = "dropdown",
      previewer = false,
    },
    help_tags = {},
    oldfiles = {},
    lsp_document_symbols = {
      theme = "ivy",
      symbols = {
        "Class",
        "Function",
        "Method",
        "Constructor",
        "Interface",
        "Module",
        "Struct",
        "Trait",
        "Field",
        "Property",
      },
    },
    lsp_workspace_symbols = {
      theme = "ivy",
      symbols = {
        "Class",
        "Function",
        "Method",
        "Constructor",
        "Interface",
        "Module",
        "Struct",
        "Trait",
        "Field",
        "Property",
      },
    },
  },
}

vim.cmd [[
nnoremap <silent> <leader>ff :Telescope find_files<cr>
nnoremap <silent> <leader>/ :Telescope live_grep<cr>
nnoremap <silent> <leader>* :Telescope grep_string<cr>
nnoremap <silent> <leader>fb :Telescope buffers<cr>
nnoremap <silent> <leader>fh :Telescope help_tags<cr>
nnoremap <silent> <leader>fr :Telescope oldfiles<cr>
nnoremap <silent> <leader>fs :Telescope lsp_document_symbols<cr>
nnoremap <silent> <leader>fS :Telescope lsp_dynamic_workspace_symbols<cr>
]]
