-- Visual mode: keep selection after indenting
vim.keymap.set('v', '>', '>gv', { desc = 'Indent and reselect' })
vim.keymap.set('v', '<', '<gv', { desc = 'Unindent and reselect' })
vim.keymap.set('n', '\\h', '<cmd>nohl<cr>', { desc = "Clear search highlights" })

-- Lsp
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Go to declaration' })
vim.keymap.set('n', '<leader>r', ':LspRestart<CR>', { desc = 'Restart LSP' })     

-- Type a number in normal mode, then press <CR> to jump to that buffer
vim.keymap.set('n', '<CR>', function()
  local count = vim.v.count
  if count > 0 then
    vim.cmd('buffer ' .. count)
  else
    vim.cmd('normal! <CR>')
  end
end, { noremap = true, silent = true })
