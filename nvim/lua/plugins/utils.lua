return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require('config.utils.nvim-tree') end,
  },

  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function() require('config.utils.telescope') end,
  },

  {
    'tpope/vim-fugitive',
    event = 'VeryLazy',
  },

  {
    'lewis6991/gitsigns.nvim',
    event = 'VeryLazy',
    config = function() require('config.utils.gitsigns') end,
  },
}
