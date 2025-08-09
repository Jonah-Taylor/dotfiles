-- Visual mode: keep selection after indenting
vim.keymap.set('v', '>', '>gv', { desc = 'Indent and reselect' })
vim.keymap.set('v', '<', '<gv', { desc = 'Unindent and reselect' })
vim.keymap.set('n', '\\h', '<cmd>nohl<cr>', { desc = "Clear search highlights" })
