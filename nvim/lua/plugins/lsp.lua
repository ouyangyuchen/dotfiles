return {
  {
    'neovim/nvim-lspconfig',
    config = function() require('config.lsp.settings') end,
    dependencies = 'williamboman/mason.nvim',
  },

  {
    'williamboman/mason.nvim',
    build = ':MasonUpdate',
    opts = {},
  },

  {
    'hrsh7th/nvim-cmp',
    event = 'VeryLazy',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'onsails/lspkind.nvim',
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function() require('config.lsp.cmp') end,
  },

  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require('config.lsp.trouble') end,
  },
}
