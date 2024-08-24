return {
  { -- edit surrounding delimeters
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    opts = {},
  },

  { -- complete delimeters smartly
    "windwp/nvim-autopairs",
    event = "VeryLazy",
    opts = {},
  },
}
