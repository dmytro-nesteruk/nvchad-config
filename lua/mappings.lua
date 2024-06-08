require "nvchad.mappings"

local map = vim.keymap.set

-- Save
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save and format" })
map("n", "<leader>s", ":noautocmd w<CR>", { desc = "Save without formatting" })

-- Exit
map("n", "<leader>q", "<cmd>lua require('utils').smart_quit()<CR>", { desc = "Exit" })

-- Window focusing
map("n", "<C-h>", "<C-w>h", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move focus to the buttom window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move focus to the top window" })

-- Splits
map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical split" })

-- Moving lines
map("n", "<S-j>", ":m '>+1<CR>gv=gv", { desc = "Move current line to bottom" })
map("n", "<S-k>", ":m '<-2<CR>gv=gv", { desc = "Move current line to top" })
map("v", "<S-j>", ":m .+1<CR>", { desc = "Move current line to bottom" })
map("v", "<S-k>", ":m .-2<CR>", { desc = "Move current line to top" })

-- Block indent
map("v", "<S-Tab>", "<lt>gv", { silent = true, desc = "Indent" })
map("v", "<Tab>", ">gv", { silent = true, desc = "Indent" })

-- Fast ESC
map("i", "jk", "<ESC>")

-- Buffers
map("n", "<leader>1", function()
  require("nvchad.tabufline").prev()
end, { desc = "Move to the previous buffer" })

map("n", "<leader>2", function()
  require("nvchad.tabufline").next()
end, { desc = "Move to the next buffer" })

map("n", "<leader>c", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Close current buffer" })

map("n", "<leader>x", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close all buffers" })

-- Nvim Tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

-- LazyGit
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "LazyGit" })

-- LspSaga
map("n", "<leader>hf", "<cmd>Lspsaga finder<CR>", { desc = "LspSaga Finder" })
map("n", "<leader>ha", "<cmd>Lspsaga code_action<CR>", { desc = "LspSaga Code action" })
map("n", "<leader>hr", "<cmd>Lspsaga rename<CR>", { desc = "LspSaga Rename symbol" })
map("n", "<leader>hd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { desc = "LspSaga Floating diagnostics" })
map("n", "<leader>hh", "<cmd>Lspsaga hover_doc<CR>", { desc = "LspSaga Floating documentation" })
map("n", "<leader>ho", "<cmd>Lspsaga outline<CR>", { desc = "LspSaga Outline" })

-- DiffView
map("n", "<leader>dd", "<cmd>DiffViewOpen<CR>", { desc = "Open DiffView" })
map("n", "<leader>dc", "<cmd>DiffViewClose<CR>", { desc = "Close DiffView" })

-- Debug
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle debugger breakpoint" })
map("n", "<leader>dut", "<cmd>lua require('dapui').toggle()<CR>", { desc = "Toggle DAP UI" })
map("n", "<leader>duo", "<cmd>lua require('dapui').open()<CR>", { desc = "Open DAP UI" })
map("n", "<leader>duc", "<cmd>lua require('dapui').close()<CR>", { desc = "Close DAP UI" })
map("n", "<leader>dn", "<cmd>DapNew<CR>", { desc = "Debbugger new" })
map("n", "<leader>dso", "<cmd>DapStepOver<CR>", { desc = "Debbugger step over" })
map("n", "<leader>dsi", "<cmd>DapStepInto<CR>", { desc = "Debbugger step into" })
map("n", "<F8>", "<cmd>DapStepOver<CR>", { desc = "Debbugger step over" })
map("n", "<F9>", "<cmd>DapStepInto<CR>", { desc = "Debbugger step into" })
map("n", "<F10>", "<cmd>DapStepOut<CR>", { desc = "Debbugger step out" })

map("n", "<leader>dpr", "<cmd>lua require('dap-python').test_method()<CR>", { desc = "Run python" })
