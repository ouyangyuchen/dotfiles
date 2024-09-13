local servers = {
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  },

  clangd = {},
}

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

for server, configopt in pairs(servers) do
  local opts = {
    capabilities = capabilities,
  }

  local servername = vim.split(server, "@")[1]
  opts = vim.tbl_deep_extend("force", configopt, opts)

  lspconfig[servername].setup(opts)
end
