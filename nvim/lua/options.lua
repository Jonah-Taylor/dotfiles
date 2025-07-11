
-- Theme
vim.cmd([[colorscheme gruvbox]])

-- System clipboard
vim.opt.clipboard = "unnamed,unnamedplus"

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber=true

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
