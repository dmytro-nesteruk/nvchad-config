local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    css = { { "prettierd", "prettier" } },
    scss = { { "prettierd", "prettier" } },
    html = { { "prettierd", "prettier" } },
    astro = { { "prettierd", "prettier" } },
    vue = { { "prettierd", "prettier" } },
    svelte = { { "prettierd", "prettier" } },
    json = { { "prettierd", "prettier" } },
    jsonc = { { "prettierd", "prettier" } },
    markdown = { { "prettierd", "prettier" } },
    javascriptreact = { { "prettierd", "prettier" } },
    typescriptreact = { { "prettierd", "prettier" } },
    javacript = { { "prettierd", "prettier" } },
    typescript = { { "prettierd", "prettier" } },

    go = { "goimports", "gofmt" },

    python = { "black" },

    prisma = { "prismaFmt" },

    ["*"] = { "trim_whitespace" },
  },

  format_on_save = {
    timeout_ms = 2000,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
