return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      sync_install = false,
      ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
