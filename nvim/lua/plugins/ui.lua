return {
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },

  { -- status line
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("config.lualine")
    end,
  },
}
