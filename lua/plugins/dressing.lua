return {
  "stevearc/dressing.nvim",
  init = function()
    local dressing = require "dressing"

    dressing.setup {
      input = {
        enabled = true,
        default_prompt = "➤ ",
        border = "rounded",
        insert_only = true,
        win_options = {
          winhighlight = "NormalFloat:SagaTitle,FloatBorder:SagaBorder,FloatTitle:SagaTitle",
        },
      },
      select = {
        enabled = true,
        border = "rounded",

        backend = {
          "telescope",
          "builtin",
        },

        builtin = {
          border = "rounded",
        },

        win_options = {
          winhighlight = "NormalFloat:SagaTitle,FloatBorder:SagaBorder,FloatTitle:SagaTitle",
        },
      },
    }
  end,
}
