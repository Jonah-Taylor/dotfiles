require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
-- General UI settings
vim.opt.termguicolors = true
vim.o.number = true -- Show line numbers
vim.env.TERM = "alacritty" -- Set terminal emulator
-- vim.opt.shell = "alacritty"
vim.opt.shellcmdflag = "-e"
vim.opt.clipboard:append "unnamedplus" -- Use system clipboard

-- Set transparent background
vim.cmd [[
  highlight Normal guibg=none ctermbg=none
  highlight NormalFloat guibg=none ctermbg=none
]]

-- Enable line wrapping
vim.o.wrap = true

-- Enable breakindent (indent wrapped lines)
vim.o.breakindent = true

-- Set the indent for wrapped lines (e.g., 2 spaces)
vim.o.breakindentopt = "shift:2"

-- Display invisible characters (show visual indicators for wrapped lines)
-- vim.o.list = true
vim.opt.listchars = { trail = "~" }

-- Set tab width and spacing without converting tabs into spaces
vim.o.tabstop = 4 -- Number of spaces a tab character represents
vim.o.softtabstop = 4 -- Number of spaces to insert when pressing Tab
vim.o.shiftwidth = 4 -- Number of spaces to use for indentation
-- vim.o.expandtab = false   -- Don't convert tabs to spaces
