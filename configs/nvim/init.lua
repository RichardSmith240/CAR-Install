--general
vim.opt.number = true
vim.opt.relativenumber = true

--configs
require ("config.lazy")
require ("config.keybinds")

--plugins
require ("plugins.mason")
require ("plugins.lualine")
require ("plugins.telescope")
require ("plugins.treesitter")
require ("plugins.diffview")
