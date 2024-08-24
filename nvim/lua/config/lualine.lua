require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = "auto",
    -- component_separators = { left = "", right = "" },
    -- section_separators = { left = "", right = "" },
    disabled_filetypes = { "NvimTree" },
    globalstatus = false,
    always_divide_middle = false,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = {
      {
        "filename",
        path = 1,
        file_status = true,
      },
      {
        "diagnostics",
        sources = { "nvim_diagnostic", "coc" },
        sections = { "error", "warn" },
        update_in_insert = false,
        always_visible = true,
      },
      "diff",
    },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})

vim.opt.showmode = false
