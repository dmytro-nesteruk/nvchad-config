return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    local wk = require "which-key"

    vim.o.timeout = true
    vim.o.timeoutlen = 50

    wk.register({
      b = { name = "Buffer" },

      -- Nvim Tree
      ["e"] = { "<cmd>NvimTreeToggle<CR>", "Toggle NvimTree" },

      -- Save
      ["w"] = { "<cmd>w<CR>", "Save and format" },
      ["s"] = { ":noautocmd w<CR>", "Save without formatting" },

      -- Exit
      ["q"] = { "<cmd>lua require('utils').smart_quit()<CR>", "Quit" },

      -- Lspsaga
      ["h"] = {
        name = "󰾙 Lspsaga",
        f = { "<cmd>Lspsaga finder<CR>", "Finder" },
        t = { "<cmd>Lspsaga term_toggle<CR>", "Toggle terminal" },
        a = { "<cmd>Lspsaga code_action<CR>", "Actions" },
        r = { "<cmd>Lspsaga rename<CR>", "Rename" },
        d = { "<cmd>Lspsaga show_cursor_diagnostics<CR>", "Show float diagnostics" },
        h = { "<cmd>Lspsaga hover_doc<CR>", "Documentation" },
        ["g"] = {
          name = "Definition",
          p = { "<cmd>Lspsaga peek_definition<CR>", "Definition" },
          g = { "<cmd>Lspsaga goto_definition<CR>", "Go to definition" },
        },
        l = { "<cmd>Lspsaga show_line_diagnostics<CR>", "Line diagnostics" },
        p = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "Prev diagnostic" },
        n = { "<cmd>Lspsaga diagnostic_jump_next<CR>", "Next diagnostic" },
        o = { "<cmd>Lspsaga outline<CR>", "Outline" },
      },

      ["x"] = {
        e = { "<cmd>!npx eslint --fix %:p<CR>", "eslint --fix current file" },
        s = { "<cmd>!npx stylelint --fix %:p<CR>", "stylelint --fix current file" },
        p = { '<cmd>!npx prettier "%:p" --write --config ./.prettierrc*?<CR>', "prettier --write current file" },
      },
    }, { mode = "n", prefix = "<leader>" })
  end,
}
