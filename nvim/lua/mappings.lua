-- Space only acts as leader
vim.keymap.set('n', '<space>', '<nop>', { noremap = true })

-- Quit
vim.cmd('cnoreabbrev wq wqa')
vim.cmd('cnoreabbrev q qa')

-- Visual mode: keep selection after indenting
vim.keymap.set('v', '>', '>gv', { desc = 'Indent and reselect' })
vim.keymap.set('v', '<', '<gv', { desc = 'Unindent and reselect' })
vim.keymap.set('n', '\\h', '<cmd>nohl<cr>', { desc = "Clear search highlights" })

-- Lsp
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Go to declaration' })
vim.keymap.set('n', '<leader>r', ':LspRestart<CR>', { desc = 'Restart LSP' })     

