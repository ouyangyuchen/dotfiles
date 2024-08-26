local wk = require("which-key")

wk.setup({
  preset = "modern",
  delay = function(ctx)
    return ctx.plugin and 0 or 1500
  end,
  triggers = {
    { "<leader>", mode = { "n", "v" } },
    { "g", mode = { "n", "v" } },
    { "z", mode = { "n", "v" } },
    { "<C-w>", mode = { "n", "v" } },
    { "[", mode = { "n", "v" } },
    { "]", mode = { "n", "v" } },
  },
})

-- LSP
wk.add({
  { "<leader>c", group = "Code action", mode = { "n", "v" } },
  { "<leader>r", group = "Rename" },
})

-- telescope
wk.add({
  { "<leader>f", group = "Find" },
})

-- Gitsigns
wk.add({
  { "<leader>g", group = "Git", mode = { "n", "v" } },
  { "<leader>gt", group = "Blame & Deleted" },
})
