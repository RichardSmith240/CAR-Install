--line 
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.wrap = true
vim.o.autoindent = true
vim.o.copyindent = true
vim.o.breakindent = true

--cursor 
vim.o.cursorline = true
vim.o.cursorlineopt = "screenline"
vim.o.cursorcolumn = false 

--window 
vim.o.scrolloff = 4
vim.o.foldmethod = "indent"
vim.o.foldlevel = 4
vim.o.pumheight = 5

--file
vim.o.undofile = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.tabstop = 3
vim.o.shiftwidth = 3
 
--search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true

--commands
vim.o.inccommand = "split" --for find and replace

--syntax highlighting and spelling
vim.o.spelllang = "en_us"
vim.o.spell = true
vim.o.updatetime = 300
vim.o.updatetime = 300

--diagnostics
vim.diagnostic.config({
	--virtual_text = true,
	virtual_lines = true,
	underline = true
})

--other
vim.o.clipboard = "unnamedplus" --clipboard
vim.o.updatetime = 500
vim.opt.mouse = ""
