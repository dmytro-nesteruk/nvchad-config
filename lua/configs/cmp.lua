local cmp = require "cmp"

dofile(vim.g.base46_cache .. "cmp")

local cmp_ui = require("nvconfig").ui.cmp
local cmp_style = cmp_ui.style

local field_arrangement = {
  atom = { "kind", "abbr", "menu" },
  atom_colored = { "kind", "abbr", "menu" },
}

local luasnip = require "luasnip"

local function has_words_before()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
end

local formatting_style = {
  fields = field_arrangement[cmp_style] or { "abbr", "kind", "menu" },

  format = function(entry, vim_item)
    local kind = vim_item.kind
    local icons = require "nvchad.icons.lspkind"
    local icon = (cmp_ui.icons and icons[vim_item.kind]) or ""

    vim_item.kind = (icon or "?")

    vim_item.menu = "" .. kind .. ""

    local item = entry:get_completion_item()

    if item.detail then
      vim_item.menu = "[" .. vim_item.menu .. "]" .. " 📎 " .. item.detail
    end

    if string.len(vim_item.abbr) >= 30 then
      vim_item.abbr = string.sub(vim_item.abbr, 1, 27) .. "..."
    end

    if string.len(vim_item.menu) >= 30 then
      vim_item.menu = string.sub(vim_item.menu, 1, 27) .. "..."
    end

    return vim_item
  end,
}

local function border(hl_name)
  return {
    { "╭", hl_name },
    { "─", hl_name },
    { "╮", hl_name },
    { "│", hl_name },
    { "╯", hl_name },
    { "─", hl_name },
    { "╰", hl_name },
    { "│", hl_name },
  }
end

local options = {
  completion = {
    completeopt = "menu,menuone,noinsert",
  },

  window = {
    completion = {
      side_padding = (cmp_style ~= "atom" and cmp_style ~= "atom_colored") and 1 or 0,
      winhighlight = "Normal:CmpPmenu,CursorLine:CmpSel,Search:None",
      scrollbar = false,
    },
    documentation = {
      border = border "CmpDocBorder",
      winhighlight = "Normal:CmpDoc",
    },
  },

  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },

  formatting = formatting_style,

  mapping = {
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expandable() then
        luasnip.expand()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<C-l>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm { select = true },
  },

  sources = {
    { name = "nvim_lsp", priority = 1000 },
    { name = "luasnip", priority = 750 },
    { name = "pandoc_references", priority = 725 },
    { name = "latex_symbols", priority = 700 },
    { name = "emoji", priority = 700 },
    { name = "calc", priority = 650 },
    { name = "path", priority = 500 },
    { name = "buffer", priority = 250 },
    {
      name = "scss",
      priority = 950,
      option = {
        folders = { "src/sections/main/gains/components" },
        triggers = { "$" },
        extension = { ".scss", ".vue", ".astro", ".svelte" },
      },
    },
  },
}

if cmp_style ~= "atom" and cmp_style ~= "atom_colored" then
  options.window.completion.border = border "CmpBorder"
end

return options
