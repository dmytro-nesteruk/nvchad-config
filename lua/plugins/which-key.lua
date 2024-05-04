return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    local wk = require "which-key"
    local gs = require "gitsigns"

    vim.o.timeout = true
    vim.o.timeoutlen = 150

    wk.register({
      -- b = { name = "Buffer" },

      -- Nvim Tree
      ["e"] = { "<cmd>NvimTreeToggle<CR>", "󱏒 Toggle NvimTree" },

      -- Save
      ["w"] = { "<cmd>w<CR>", " Save and format" },
      ["s"] = { ":noautocmd w<CR>", " Save without formatting" },

      -- Exit
      ["q"] = { "<cmd>lua require('utils').smart_quit()<CR>", "󰿅 Quit" },

      -- Diffview
      ["d"] = {
        name = " DiffView",
        d = { "<cmd>DiffviewOpen<CR>", "Open DiffView" },
        c = { "<cmd>DiffviewClose<CR>", "Close DiffView" },
      },

      -- Git
      ["g"] = {
        name = " Git",
        g = { "<cmd>LazyGit<CR>", "LazyGit client" },
        l = { "<cmd>lua require('gitsigns).blame_line({ full = true })<CR>", "Blame line" },
        d = { "<cmd>lua require('gitsigns).diffthis<CR>", "Diff current buffer" },
        b = { "<cmd>Telescope git_branches<CR>", "Branches" },
        c = { "<cmd>Telescope git_commits<CR>", "Commits" },
      },

      -- Lspsaga
      ["h"] = {
        name = " Lspsaga",
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
