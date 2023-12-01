return {
  -- editing
  { 'tpope/vim-surround', dependencies = 'tpope/vim-repeat' },
  { 'numToStr/Comment.nvim', opts = {} },
  { 'windwp/nvim-autopairs', opts = {} },

  -- utils
  {
    'nvim-tree/nvim-tree.lua', version = '*',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require('config.nvim-tree') end,
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    event = 'VeryLazy',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function() require('config.telescope') end,
  },
  { 'tpope/vim-fugitive' },
  {
    'lewis6991/gitsigns.nvim',
    event = 'VeryLazy',
    config = function() require('config.gitsigns') end,
  },

  -- UI & appearance
  {
    'sainnhe/gruvbox-material',
    priority = 1000,
    config = function()
      vim.cmd [[
        let g:gruvbox_material_background='medium'
        let g:gruvbox_material_foreground='mix'
        colorscheme gruvbox-material
      ]]
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function() require('config.treesitter') end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function() require('config.lualine') end,
  },

  -- IDE features
  {
    'neovim/nvim-lspconfig',
    config = function() require('config.lsp') end,
    dependencies = 'williamboman/mason.nvim'
  },
  {
    'nvimtools/none-ls.nvim',
    config = function () require('config.null-ls') end,
  },
  {
    'hrsh7th/nvim-cmp',
    event = 'VeryLazy',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'onsails/lspkind.nvim',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
    },
    config = function() require('config.cmp') end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function() require('config.trouble') end,
  },
}
