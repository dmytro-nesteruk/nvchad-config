return {
  "jose-elias-alvarez/null-ls.nvim",
  event = "VeryLazy",
  opts = function(_, config)
    local null_ls = require "null-ls"

    -- local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics
    local code_actions = null_ls.builtins.code_actions

    config.sources = {
      diagnostics.golangci_lint,

      diagnostics.eslint_d.with {
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "vue",
          "svelte",
          "astro",
        },
      },
      diagnostics.stylelint.with {
        filetypes = {
          "scss",
          "css",
          "sass",
          "postcss",
          "svelte",
          "vue",
          "astro",
          -- "html",
        },
      },
      code_actions.eslint_d,
      -- code_actions.cspell,
    }
    return config
  end,
}
