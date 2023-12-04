return {
  {
    'sainnhe/gruvbox-material',
    priority = 1000,
    config = function()
      vim.cmd [[
        set background=light
        let g:gruvbox_material_ui_contrast='low'
        let g:gruvbox_material_background='hard'
        let g:gruvbox_material_foreground='mix'
        colorscheme gruvbox-material
        ]]
    end,
  }
}
