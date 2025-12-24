--note:
-- <c-x> = control + x
-- <m-x> = alt + x
-- <s-x> = shift + x

--general
vim.g.mapleader = " "

--tabs
vim.keymap.set('n', '<leader>tn', '<cmd>tabnew<CR>', {desc = 'Create new tab'})
vim.keymap.set('n', '<leader>tc', '<cmd>tabclose!<CR>', {desc = 'Closes active tab'})

--Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>',{desc = 'Find Files'})
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', {desc = 'Live Grep'})
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {desc = 'Buffers'})
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {desc = 'Help'})

--Git
vim.keymap.set('n', '<leader>gc', '<cmd>Telescope git_commits<cr>', {desc = 'Find Git Commit'})
vim.keymap.set('n', '<leader>gb', '<cmd>Telescope git_branches<cr>', {desc = 'Find Git Branch'})
vim.keymap.set('n', '<leader>gs', '<cmd>Telescope git_status<cr>', {desc = 'Check Git Status'})
vim.keymap.set('n', '<leader>gdo', '<cmd>DiffviewOpen<cr>', {desc = 'Open Diffview'})
vim.keymap.set('n', '<leader>gdc', '<cmd>DiffviewClose<cr>', {desc = 'Close Diffview'})
vim.keymap.set('n', '<leader>gh', '<cmd>DiffviewFileHistory<cr>', {desc = 'Show File History'})

--Lsp
---navigation
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {desc = 'Go to Definition'})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {desc = 'Go to Declation'})
vim.keymap.set('n', 'gr', vim.lsp.buf.references, {desc = 'Go to References'})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {desc = 'Go to Implementation'})
---info
vim.keymap.set('n', 'H', vim.lsp.buf.hover, {desc = 'Hover Docs'})
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, {desc = 'Rename Symbol'})
vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, {desc = 'Code Action'})

--Mason
vim.keymap.set('n', '<leader>mo', '<cmd>Mason<cr>', {desc = 'Open Mason Menu'})
vim.keymap.set('n', '<leader>mi', '<cmd>LspInstall', {desc = 'Install Lsp'})
vim.keymap.set('n', '<leader>md', '<cmd>LspUninstall', {desc = 'Uninstall Lsp'})
vim.keymap.set('n', '<leader>mu', '<cmd>MasonUpdate<cr>', {desc = 'Update Lsps'})

--Lazy
vim.keymap.set('n', '<leader>lzo', '<cmd>Lazy<cr>', {desc = 'Open Lazy Menu'})
vim.keymap.set('n', '<leader>lzs', '<cmd>Lazy sync<cr>', {desc = 'Sync Lazy Plugins'})
vim.keymap.set('n', '<leader>lzc', '<cmd>Lazy check<cr>', {desc = 'Check Lazy Plugins'})
vim.keymap.set('n', '<leader>lzx', '<cmd>Lazy clean<cr>', {desc = 'Clean Lazy Plugins'})
vim.keymap.set('n', '<leader>lzl', '<cmd>Lazy log<cr>', {desc = 'Check Lazy Logs'})
vim.keymap.set('n', '<leader>lzd', '<cmd>Lazy debug<cr>', {desc = 'Debug Lazy'})
vim.keymap.set('n', '<leader>lzh', '<cmd>Lazy help<cr>', {desc = 'Lazy Help'})

--samples
vim.keymap.set('n', '<leader>', '<cmd><cr>', {desc = ''})
vim.keymap.set('n', '<leader>', '<cmd><cr>', {desc = ''})
