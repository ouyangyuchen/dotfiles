return {
  {
    'hrsh7th/nvim-cmp',
    event = 'VeryLazy',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'onsails/lspkind.nvim',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
    },
    config = function() require('config.edit.cmp') end,
  },

  {
    'tpope/vim-surround',
    dependencies = 'tpope/vim-repeat',
    event = 'VeryLazy',
  },

  {
    'numToStr/Comment.nvim',
    event = 'VeryLazy',
    opts = {}
  },

  {
    'windwp/nvim-autopairs',
    event = 'VeryLazy',
    opts = {},
  },
}
