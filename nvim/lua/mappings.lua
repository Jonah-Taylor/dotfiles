require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

vim.cmd [[
  iabbrev html5 <!DOCTYPE html><CR><html lang="en"><CR><head><CR><meta charset="UTF-8"><CR><meta name="viewport" content="width=device-width, initial-scale=1.0"><CR><title>Document</title><CR></head><CR><body><CR><CR></body><CR></html>
]]

map("n", ";", ":", { desc = "CMD enter command mode" })

-- NvimTree Toggle
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
map("n", "<leader>q", ":wq<CR>", { desc = "Close current tab" })

-- No highlight search
map("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "Clear Highlight Search" })

-- Clipboard bindings
map("n", "<C-c>", '"+y', { desc = "Copy to Clipboard" })
map("v", "<C-c>", '"+y', { desc = "Copy to Clipboard" })
map("n", "<C-v>", '"+p', { desc = "Paste from Clipboard" })
map("v", "<C-v>", '"+p', { desc = "Paste from Clipboard" })
map("i", "<C-v>", "<C-r>+", { desc = "Paste from Clipboard in Insert Mode" })

-- Undo keybindings
map("n", "<C-z>", "u", { desc = "Undo" })
map("i", "<C-z>", "<C-o>u", { desc = "Undo in Insert Mode" })
map("v", "<C-z>", "u", { desc = "Undo in Visual Mode" })

-- Escape with 'jj' in insert mode
map("i", "jj", "<Esc>", { desc = "Escape Insert Mode with 'jj'" })

-- Commenting/uncommenting lines
map("n", "<C-/>", ":normal! I//<CR>", { desc = "Comment Line" })
map("v", "<C-/>", ":normal! I//<CR>", { desc = "Comment Selection" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
