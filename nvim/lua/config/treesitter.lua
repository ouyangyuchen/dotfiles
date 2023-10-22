require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "cpp",
    "lua",
    "vim",
    "vimdoc",
    "python",
    "query",
  },
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
}

vim.cmd[[
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable
]]
