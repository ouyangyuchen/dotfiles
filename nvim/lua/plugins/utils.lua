return {
  { -- file explorer
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("config.nvim-tree")
    end,
  },

  { -- fuzzy finder
    "nvim-telescope/telescope.nvim",
    event = "VeryLazy",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("config.telescope")
    end,
  },

  { -- git hunks (un)staging
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = function()
      require("config.gitsigns")
    end,
  },

  { -- git integration on vim
    "tpope/vim-fugitive",
    event = "VeryLazy",
  },
}
