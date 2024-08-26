local function on_attach(bufnr)
  local api = require("nvim-tree.api")
  local function opts(desc)
    return {
      desc = "nvim-tree: " .. desc,
      buffer = bufnr,
      noremap = true,
      silent = true,
      nowait = true,
    }
  end
  -- default mappings
  api.config.mappings.default_on_attach(bufnr)
  -- custom mappings
  vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
  vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Parent Folder"))
end

require("nvim-tree").setup({
  on_attach = on_attach,
  disable_netrw = true,
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  view = {
    width = 30,
    side = "left",
  },
  sync_root_with_cwd = true,
  renderer = {
    group_empty = false,
    highlight_git = true,
  },
  diagnostics = { enable = true },
  git = { enable = true, ignore = true },
})

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Explorer tree" })
