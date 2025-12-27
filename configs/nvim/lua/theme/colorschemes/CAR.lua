local M = {}

M.variant = "purple" -- "purple" | "dark" | "pink" | "light"
M.dark_variant = "dark"
M.palette = nil -- user overrides

local variants = {
	purple = {
		background = "#1B0126",
		foreground = "#E9DFF2",

		surface0 = "#241033",
		surface1 = "#2F1842",

		inactive = "#7D6A9C",

		primary   = "#CE84FD",
		secondary = "#9A84B8",
		tertiary  = "#E8A2D5",

		error    = "#C94A4A",
		warning  = "#E0A43A",
		info     = "#7D48B4",
		addition = "#7FB448",
	},

	dark = {
		background = "#16001F",
		foreground = "#E2D7EF",

		surface0 = "#1E082B",
		surface1 = "#2A123B",

		inactive = "#6F5A90",

		primary   = "#B875F2",
		secondary = "#8B74AB",
		tertiary  = "#D98EC4",

		error    = "#C94A4A",
		warning  = "#E0A43A",
		info     = "#7D48B4",
		addition = "#7FB448",
	},

	pink = {
		background = "#240018",
		foreground = "#F1E0EA",

		surface0 = "#330021",
		surface1 = "#42002C",

		inactive = "#9B5C86",

		primary   = "#F29AC1",
		secondary = "#B6789D",
		tertiary  = "#FFB3D9",

		error    = "#C94A4A",
		warning  = "#E0A43A",
		info     = "#C87BB0",
		addition = "#7FB448",
	},

	light = {
		background = "#E9DFF2",
		foreground = "#1B0126",

		surface0 = "#DED1EE",
		surface1 = "#D1C2E6",

		inactive = "#7B6A8E",

		primary   = "#7D48B4",
		secondary = "#5F4E78",
		tertiary  = "#C87BB0",

		error    = "#C94A4A",
		warning  = "#E0A43A",
		info     = "#7D48B4",
		addition = "#7FB448",
	},
}

function M.get()
	local v =
		variants[M.variant]
		or (vim.o.background == "light" and variants.light)
		or variants[M.dark_variant]

	if M.palette then
		v = vim.tbl_extend("force", v, M.palette)
	end

	return {
		name = "CAR",

		palette = {
			base = {
				background = v.background,
				foreground = v.foreground,
			},

			surface = {
				surface0 = v.surface0,
				surface1 = v.surface1,
			},

			state = {
				inactive = v.inactive,
			},

			accent = {
				primary   = v.primary,
				secondary = v.secondary,
				tertiary  = v.tertiary,
			},

			semantic = {
				error    = v.error,
				warning  = v.warning,
				info     = v.info,
				addition = v.addition,
			},
		},
	}
end

return M
