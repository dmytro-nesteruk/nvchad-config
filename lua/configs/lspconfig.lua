local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "lua_ls",

  "angularls",
  "astro",
  "tsserver",
  "html",
  "cssls",
  "tailwindcss",
  "jsonls",
  "svelte",
  "gopls",
  "volar",

  "marksman",

  "sqls",
  "prismals",
  "graphql",

  "dockerls",
  "docker_compose_language_service",

  "gopls",

  "dotls",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

-- vue/volar
lspconfig.volar.setup {
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
  init_options = {
    vue = {
      hybridMode = false,
    },
  },
}
