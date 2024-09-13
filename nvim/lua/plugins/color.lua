return {
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
      vim.cmd([[
        let g:gruvbox_material_background = 'medium'
        let g:gruvbox_material_foreground = 'mix'
        let g:gruvbox_material_enable_bold = 0
        colorscheme gruvbox-material
        ]])
    end,
  },
}
