-- Visual mode: keep selection after indenting
vim.keymap.set('v', '>', '>gv', { desc = 'Indent and reselect' })
vim.keymap.set('v', '<', '<gv', { desc = 'Unindent and reselect' })
vim.keymap.set('n', '\\h', '<cmd>nohl<cr>', { desc = "Clear search highlights" })

-- In your mappings.lua or init.lua
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Go to declaration' })

