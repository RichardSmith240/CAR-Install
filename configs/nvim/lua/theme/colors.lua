local M = {}

local scheme = require("theme.colorschemes.CAR").get()

local function set(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.setup()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")
  vim.o.termguicolors = true

 	local b = scheme.palette.base
	local sf = scheme.palette.surface
	local st = scheme.palette.state
	local a = scheme.palette.accent
	local sm = scheme.palette.semantic

  vim.g.colors_name = scheme.name or "CAR"

  -- Neovim
  set("Normal",       { fg = b.foreground, bg = "none" })
  set("NormalNC",     { fg = b.foreground, bg = "none" })
  set("NormalFloat",  { fg = b.foreground, bg = "none" })
  set("FloatBorder",  { fg = sf.surface1, bg = "none" })

  set("CursorLine",   { bg = sf.surface0 })
  set("Visual",       { bg = sf.surface1 })
  set("Cursor",       { fg = b.background, bg = a.tertiary })

  set("LineNr",       { fg = st.inactive, italic = true })
  set("CursorLineNr", { fg = b.foreground, bold = true })
  set("VertSplit",    { fg = sf.surface1 })

  set("StatusLine",   { fg = b.foreground, bg = sf.surface0 })
  set("StatusLineNC", { fg = st.inactive, bg = sf.surface0 })

  -- Syntax
  set("Comment",    { fg = st.inactive, italic = true })
  set("String",     { fg = a.tertiary })
  set("Constant",   { fg = a.tertiary })
  set("Identifier", { fg = b.foreground })
  set("Function",   { fg = a.secondary })
  set("Keyword",    { fg = a.primary, bold = true })
  set("Type",       { fg = a.secondary })
  set("Special",    { fg = sm.info })

  -- Diagnostics
  set("DiagnosticError", { fg = sm.error, bold = true })
  set("DiagnosticWarn",  { fg = sm.warning, italic = true })
  set("DiagnosticInfo",  { fg = sm.info })
  set("DiagnosticHint",  { fg = sm.info })

  -- Git/Diff
  set("DiffAdd",    { fg = sm.addition })
  set("DiffDelete", { fg = sm.error })
  set("DiffChange", { fg = sm.warning })
  set("DiffText",   { fg = sm.info })

  -- TreeSitter
  vim.cmd([[
	  hi link @comment Comment
	  hi link @string String
	  hi link @constant Constant
	  hi link @keyword Keyword
	  hi link @function Function
	  hi link @type Type
	]])

end

return M

