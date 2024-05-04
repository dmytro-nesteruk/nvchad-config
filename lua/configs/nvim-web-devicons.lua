local config = {
  override_by_filename = {
    -- ESLint
    [".eslintignore"] = {
      icon = "",
      color = "#6810c7",
      name = "Eslint",
    },
    [".eslintrc"] = {
      icon = "",
      color = "#6810c7",
      name = "Eslint",
    },
    [".eslintrc.json"] = {
      icon = "",
      color = "#6810c7",
      name = "Eslint",
    },
    [".eslintrc.cjs"] = {
      icon = "",
      color = "#6810c7",
      name = "Eslint",
    },
    [".eslintrc.mjs"] = {
      icon = "",
      color = "#6810c7",
      name = "Eslint",
    },

    -- Prettier
    [".prettierrc"] = {
      icon = "",
      color = "#c78710",
      name = "prettierrc",
    },
    [".prettierignore"] = {
      icon = "",
      color = "#c78710",
      name = "prettierrc",
    },
    [".prettierrc.json"] = {
      icon = "",
      color = "#c78710",
      name = "prettierrc",
    },
    [".prettierrc.cjs"] = {
      icon = "",
      color = "#c78710",
      name = "prettierrc",
    },
    [".prettierrc.mjs"] = {
      icon = "",
      color = "#c78710",
      name = "prettierrc",
    },

    -- Stylelint
    [".stylelintrc"] = {
      icon = "",
      color = "#6810c7",
      name = "stylelintrc",
    },
    [".stylelintignore"] = {
      icon = "",
      color = "#6810c7",
      name = "stylelintrc",
    },
    [".stylelintrc.json"] = {
      icon = "",
      color = "#6810c7",
      name = "stylelintrc",
    },
    [".stylelintrc.cjs"] = {
      icon = "",
      color = "#6810c7",
      name = "stylelintrc",
    },
    [".stylelintrc.mjs"] = {
      icon = "",
      color = "#6810c7",
      name = "stylelintrc",
    },
  },
  -- override_by_extension = {
  --   ["astro"] = {
  --     icon = "",
  --     color = "#81e043",
  --     name = "Log",
  --   },
  -- },
}

require("nvim-web-devicons").setup(config)
