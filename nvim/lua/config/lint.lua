local null_ls = require('null-ls')

-- builtin-sources: https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md
null_ls.setup({
  sources = {
    -- c, cpp
    null_ls.builtins.formatting.clang_format,

    -- python
    null_ls.builtins.formatting.black,

    -- lua
    null_ls.builtins.formatting.stylua,

    -- markdown
    null_ls.builtins.diagnostics.markdownlint,
  },
})
