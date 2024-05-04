require "nvchad.options"

local o = vim.o
local g = vim.g

o.termguicolors = true

o.number = true
o.relativenumber = true

o.wrap = false
o.scrolloff = 8

o.expandtab = true
o.smarttab = true
o.shiftwidth = 2
o.tabstop = 2
o.autoindent = true

g.mapleader = " "
g.lazygit_floating_window_use_plenary = 0
