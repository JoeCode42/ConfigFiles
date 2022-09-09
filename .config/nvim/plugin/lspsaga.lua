local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.init_lsp_saga({
})

local opts = { noremap = true, silent = true }
-- vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts) havent found out what this does yet
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'ca', '<Cmd>Lspsaga code_action<CR>', opts)
-- vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts) currently broken
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
