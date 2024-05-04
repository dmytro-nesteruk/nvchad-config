require("lint").linters_by_ft = {
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  typescriptreact = { "eslint_d" },
  javascriptreact = { "eslint_d" },

  vue = { "eslint_d", "stylelint" },
  svelte = { "eslint_d", "stylelint" },
  astro = { "eslint_d", "stylelint" },

  scss = { "stylelint" },
  css = { "stylelint" },
  sass = { "stylelint" },
  postcss = { "stylelint" },

  go = { "golangcilint" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
