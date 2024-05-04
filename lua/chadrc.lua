-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

local highlights = require "highlights"

M.ui = {
  theme = "kanagawa",

  hl_override = highlights.override,
  hl_add = highlights.add,
}

return M
