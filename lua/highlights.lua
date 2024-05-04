-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

M.override = {
  NvimTreeOpenedFolderName = {
    fg = "green",
    bold = true,
  },
  Comment = {
    italic = true,
  },
}

M.add = {
  NvimTreeOpenedFolderName = {
    fg = "green",
    bold = true,
  },
  Comment = {
    italic = true,
  },

  DiffChange = {
    bg = "none",
    fg = "#ffbf00",
  },
  DiffAdd = {
    bg = "none",
    fg = "#69e609",
  },
  DiffRemoved = {
    bg = "none",
    fg = "#eb1e52",
  },

  GitSignsDelete = {
    bg = "none",
    fg = "#eb1e52",
  },

  GitSignsStagedDelete = {
    bg = "none",
    fg = "#C8C093",
  },

  GitSignsStagedAdd = {
    bg = "none",
    fg = "#C8C093",
  },

  GitSignsAddInline = {
    bg = "none",
    fg = "#C8C093",
  },
}

return M
