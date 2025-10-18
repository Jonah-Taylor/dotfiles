
-- Theme
vim.cmd([[colorscheme gruvbox]])

-- System clipboard
vim.opt.clipboard = "unnamed,unnamedplus"

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber=true

-- Indenting and tabbing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.shiftround = true

vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- Show space chars
vim.opt.list = true
vim.opt.listchars = {
  tab = '→ ', -- requires 2 chars
  space = '·',
  eol = '↴',
  trail = '~',
  extends = '»',
  precedes = '«',
  nbsp = '␣',
}

-- Errors
vim.opt.cmdheight = 1  -- More space for error messages (default is 1)
vim.keymap.set('n', '<leader>f', function()
  vim.diagnostic.setqflist()
  vim.cmd('copen')  -- Opens error list at bottom of screen
end, { desc = 'Show all errors' })
