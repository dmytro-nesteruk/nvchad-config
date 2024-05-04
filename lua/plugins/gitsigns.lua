return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup {
      signs = {
        add = { text = "┃" },
        change = { text = "┃" },
        delete = { text = "" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┃" },
      },

      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function opts(desc)
          return { buffer = bufnr, desc = desc }
        end

        local map = vim.keymap.set

        map("n", "<leader>gl", function()
          gs.blame_line { full = true }
        end, opts "Blame line")
        map("n", "<leader>gt", gs.toggle_current_line_blame, opts "Toggle current line blame")
        map("n", "<leader>gd", gs.diffthis, opts "Diff")
      end,
    }
  end,
}
