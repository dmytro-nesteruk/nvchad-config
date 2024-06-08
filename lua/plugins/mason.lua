return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- Lua
      "lua-language-server",
      "stylua",

      -- Web
      "angular-language-server",
      "astro-language-server",
      "typescript-language-server",
      "tailwindcss-language-server",
      "prisma-language-server",
      "svelte-language-server",
      "vue-language-server",
      "html-lsp",
      "json-lsp",
      "css-lsp",

      "prettier",
      "prettierd",
      "eslint_d",
      "stylelint",

      -- Env
      "dot-language-server",

      --Python,
      "black",
      "debugpy",
      "pyright",
      "mypy",
      "ruff",

      -- Docker
      "dockerfile-language-server",
      "docker-compose-language-service",

      -- Go
      "gopls",
      "golangci-lint",
      "gofumpt",
      "goimports-reviser",
      "golines",

      -- Markdown
      "marksman",

      -- SQL
      "sqlls",
      "sqlfmt",
    },
  },
}
