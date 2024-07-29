-- sync vimrc options and basic keymaps
local status, _ = pcall(vim.cmd, 'source ~/.vimrc')
if not status then
  vim.notify('~/.vimrc not found!', 'error')
  return
end
