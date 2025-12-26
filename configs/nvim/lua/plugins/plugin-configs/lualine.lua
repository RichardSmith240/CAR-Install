local scheme = require("theme.active-palette")
local p = scheme.palette

local b  = p.base
local sf = p.surface
local a  = p.accent
local st = p.state
local sm = p.semantic

local theme = {
  normal = {
    a = { fg = b.background, bg = a.tertiary },
    b = { fg = b.foreground, bg = sf.surface0 },
    c = { fg = b.foreground, bg = sf.surface0 },
  },
  insert  = { a = { fg = b.background, bg = a.primary } },
  visual  = { a = { fg = b.background, bg = a.secondary } },
  replace = { a = { fg = b.background, bg = sm.error } },
  inactive = {
    a = { fg = st.inactive, bg = sf.surface0 },
    b = { fg = st.inactive, bg = sf.surface0 },
    c = { fg = st.inactive, bg = sf.surface0 },
  },
}

require("lualine").setup({
  options = {
    theme = theme,
    component_separators = "",
    section_separators = "",
  },

  sections = {
    lualine_a = {
      { " ", color = { bg = sf.surface0 }, right_padding = 1 },

      { "filename", color = { fg = b.background, bg = a.tertiary } },

      {
        function()
          return vim.fn.line(".") .. " / " .. vim.fn.line("$")
        end,
        color = { fg = b.background, bg = a.tertiary },
        left_padding = 1,
      },
    },

    lualine_b = {
      { "%=", color = { bg = sf.surface0 } },
    },

    lualine_c = {
      { "filetype", icon = true, color = { fg = b.foreground, bg = a.secondary } },
    },

    lualine_x = {
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        sections = { "info" },
        symbols = { info = "+ " },
        color = { fg = sm.info, bg = sf.surface0 },
      },
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        sections = { "warn" },
        symbols = { warn = "?! " },
        color = { fg = sm.warning, bg = sf.surface0 },
      },
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        sections = { "error" },
        symbols = { error = " " },
        color = { fg = sm.error, bg = sf.surface0 },
      },
    },

    lualine_y = {
      { "branch", icon = "", color = { fg = b.foreground, bg = a.primary } },
    },

    lualine_z = {
      { "%=", color = { bg = sf.surface0 } },

      { function() return "" end, color = { fg = b.foreground, bg = sf.surface0 } },
      { function() return "" end, color = { fg = b.foreground, bg = sf.surface0 } },
    },
  },

  inactive_sections = {
    lualine_a = { "filename" },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { "location" },
  },
})

