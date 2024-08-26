local signs = {
  { name = "DiagnosticSignError", text = "" },
  { name = "DiagnosticSignWarn", text = "" },
  { name = "DiagnosticSignHint", text = "" },
  { name = "DiagnosticSignInfo", text = "" },
}
for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

vim.diagnostic.config({
  virtual_text = false,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
})
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Open diagnostic" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, { desc = "Quickfix list" })
vim.cmd([[autocmd FileType qf nnoremap <buffer><silent> q :q<cr>]])

-- LSP extra keybindings
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Definition" })
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Declaration" })
    vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "Type definition" })
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
    vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Implementation" })
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename (lsp)" })
    vim.keymap.set("n", "gK", vim.lsp.buf.signature_help, { desc = "Signature help" })
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
  end,
})
