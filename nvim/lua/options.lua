
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
