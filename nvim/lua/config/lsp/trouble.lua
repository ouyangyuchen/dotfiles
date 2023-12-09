require('trouble').setup({
  icons = true,
  position = 'bottom',
  height = 10,
  width = 50,
  auto_open = false,
  auto_close = true, -- automatically close the list when you have no diagnostics
  auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
  auto_fold = false, -- automatically fold a file trouble list at creation
  auto_jump = {'lsp_definitions', 'lsp_implementations', 'lsp_type_definitions'}, -- automatically jump if there is only a single result
  include_declaration = { 'lsp_references', 'lsp_implementations', 'lsp_definitions'  }, -- include the declaration of the current symbol in the results
})

vim.cmd[[
nnoremap <silent> <leader>xx :TroubleToggle document_diagnostics<cr>
nnoremap <silent> <leader>xw :TroubleToggle workspace_diagnostics<cr>
nnoremap <silent> <leader>xq :TroubleToggle quickfix<cr>
nnoremap <silent> <leader>xl :TroubleToggle loclist<cr>

nnoremap <silent> gd :Trouble lsp_definitions<cr>
nnoremap <silent> <space>D :Trouble lsp_type_definitions<cr>
nnoremap <silent> gr :Trouble lsp_references<cr>
]]
