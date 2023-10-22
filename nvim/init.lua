-- sync vimrc options and basic keymaps
local status, _ = pcall(vim.cmd, 'source ~/.vimrc')
if not status then
  vim.notify('~/.vimrc not found!')
  return
end

-- plugin manager, load plugins in lua/plugins.lua
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup('plugins')
