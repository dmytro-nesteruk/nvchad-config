return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- Lua
      "lua-language-server",
      "stylua",

      -- Web
      "astro-language-server",
      "typescript-language-server",
      "tailwind-language-server",
      "prisma-language-server",
      "svelte-language-server",
      "vue-language-server",
      "html-lsp",
      "json-lsp",
      "css-lsp",

      "prettier",
      "prettierd",
      "eslint",
      "eslint_d",
      "stylelint",

      -- Env
      "dot-language-server",

      -- Docker
      "dockerfile-language-server",
      "docker-compose-language-service",

      -- Go
      "gopls",
      "golangcli-lint",
      "gofumpt",
      "goimports-reviser",
      "golines",
    },
  },
}
