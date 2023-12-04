return {
  {
    'neovim/nvim-lspconfig',
    config = function() require('config.lsp.settings') end,
    dependencies = {
      'williamboman/mason.nvim',
      'hrsh7th/cmp-nvim-lsp',
    },
  },

  {
    'williamboman/mason.nvim',
    build = ':MasonUpdate',
    opts = {},
  },

  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require('config.lsp.trouble') end,
  },
}
