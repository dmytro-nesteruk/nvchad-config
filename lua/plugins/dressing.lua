return {
  "stevearc/dressing.nvim",
  init = function()
    local dressing = require "dressing"

    dressing.setup {
      input = { default_prompt = "➤ " },
      select = { backend = { "telescope", "builtin" } },
    }
  end,
}
