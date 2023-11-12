-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  logging = true, -- Enable or disable logging
  log_level = vim.log.levels.WARN, -- Set the log level
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    c = {
      require("formatter.filetypes.c").clangformat,
    },
    cpp = {
      require("formatter.filetypes.cpp").clangformat,
    },
    python = {
      require("formatter.filetypes.python").black
    },
    go = {
      require("formatter.filetypes.go").gofmt
    },

    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

vim.cmd[[
nnoremap <silent> <leader>F :FormatLock<cr>
]]
