return {
  { -- setup LSP
    "neovim/nvim-lspconfig",
    config = function()
      require("config.lsp")
    end,
  },

  { -- install LSP servers, formatters, linters
    "williamboman/mason.nvim",
    opts = {},
  },

  { -- auto completion
    "hrsh7th/nvim-cmp",
    event = "VeryLazy",
    dependencies = {
      "L3MON4D3/LuaSnip",
      "onsails/lspkind.nvim", -- vscode-like icons for the completion menu
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-path",
    },
    config = function()
      require("config.cmp")
    end,
  },

  { -- better quickfix list
    "folke/trouble.nvim",
    event = "VeryLazy",
    config = function()
      require("trouble").setup({
        auto_close = true,
        focus = true,
      })
      vim.keymap.set("n", "<leader>q", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>")
      vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>")
    end,
  },

  { -- format files
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
        },
        format_on_save = {},
      })
    end,
  },
}
