return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "lua",

      -- Web styles
      "css",
      "scss",

      -- HTML like
      "vue",
      "pug",
      "html",
      "svelte",
      "astro",
      "angular",

      -- JS/TS/JSX/TSX
      "javascript",
      "typescript",
      "tsx",

      -- GO
      "go",
      "gomod",
      "gosum",
      "gotmpl",

      -- Python
      "python",

      -- Dockerfile
      "dockerfile",

      -- Markdown
      "markdown_inline",
      "markdown",

      -- Database
      "graphql",
      "prisma",
      "sql",

      -- Config
      "json",
      "jsonc",
      "yaml",

      -- Dot files
      "dot",
    },
  },
}
