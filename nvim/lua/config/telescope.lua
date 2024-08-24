local actions = require("telescope.actions")
require("telescope").setup({
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
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false,
      no_ignore = true, -- show files ignored
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
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader><leader>", builtin.find_files)
vim.keymap.set("n", "<leader>/", builtin.live_grep)
vim.keymap.set("n", "<leader>*", builtin.grep_string)
vim.keymap.set("n", "<leader>fb", builtin.buffers)
vim.keymap.set("n", "<leader>fh", builtin.help_tags)
vim.keymap.set("n", "<leader>fr", builtin.oldfiles)
vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols)
vim.keymap.set("n", "<leader>fS", builtin.lsp_dynamic_workspace_symbols)
vim.keymap.set("n", "<leader>fm", builtin.marks)
