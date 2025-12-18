local colors = {
  color1  = '#E9DFF2', -- text_dark
  color2  = '#1B0126', -- text_light

  color3  = '#462859', -- lang_bg
  color4  = '#4B2F73', -- git_bg
  color5  = '#C291F2', -- file_bg
  color6  = '#2B1E33', -- fill_bg

  color7  = '#79D542', -- add_fg
  color8  = '#E6B040', -- warn_fg
  color9  = '#D9435F', -- err_fg
}

-- theme
local bubbles_theme = {
  normal = {
    a = { fg = colors.color2, bg = colors.color5 },
    b = { fg = colors.color1, bg = colors.color6 },
    c = { fg = colors.color1, bg = colors.color6 },
  },
  insert  = { a = { fg = colors.color2, bg = colors.color5 } },
  visual  = { a = { fg = colors.color2, bg = colors.color5 } },
  replace = { a = { fg = colors.color2, bg = colors.color5 } },
  inactive = {
    a = { fg = colors.color1, bg = colors.color6 },
    b = { fg = colors.color1, bg = colors.color6 },
    c = { fg = colors.color1, bg = colors.color6 },
  },
}

require('lualine').setup {
  options = {
    theme = bubbles_theme,
    component_separators = '',
    section_separators = '', 
  },

  sections = {
    lualine_a = {
      { ' ', color = { bg = colors.color6 }, right_padding = 1 },

      -- filename
      { 'filename', color = { fg = colors.color2, bg = colors.color5 } },

      -- line / total
      {
        function()
          return vim.fn.line('.') .. ' / ' .. vim.fn.line('$')
        end,
        color = { fg = colors.color2, bg = colors.color5 },
        left_padding = 1,
      },
    },

    lualine_b = {
      -- center fill
      { '%=', color = { bg = colors.color6 } },
    },

    lualine_c = {
      -- language / filetype
      { 'filetype', icon = true, color = { fg = colors.color1, bg = colors.color3 } },
    },

    lualine_x = {
      -- additions
      {
        'diagnostics',
        sources = { 'nvim_diagnostic' },
        sections = { 'info' },
        symbols = { info = '+ ' },
        color = { fg = colors.color7, bg = colors.color6 },
      },
      -- warnings
      {
        'diagnostics',
        sources = { 'nvim_diagnostic' },
        sections = { 'warn' },
        symbols = { warn = '?! ' },
        color = { fg = colors.color8, bg = colors.color6 },
      },
      -- errors
      {
        'diagnostics',
        sources = { 'nvim_diagnostic' },
        sections = { 'error' },
        symbols = { error = ' ' },
        color = { fg = colors.color9, bg = colors.color6 },
      },
    },

    lualine_y = {
      -- git
      { 'branch', icon = '', color = { fg = colors.color1, bg = colors.color4 } },
    },

    lualine_z = {
      -- right fill
      { '%=', color = { bg = colors.color6 } },

      -- linux icon
      { function() return '' end, color = { fg = colors.color1, bg = colors.color6 } },

      -- neovim icon
      { function() return '' end, color = { fg = colors.color1, bg = colors.color6 } },
    },
  },

  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },

  tabline = {},
  extensions = {},
}
