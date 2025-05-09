-- ~/.config/nvim/lua/custom/nvim-tree.lua

-- Treesitter configuration
require("nvim-treesitter.configs").setup {
  ensure_installed = { "svelte", "lua", "javascript", "typescript", "html", "css" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

require("nvim-tree").setup {
  open_on_tab = false,
  hijack_netrw = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  view = {
    side = "right",
    width = 30,
  },
}

-- Set transparent background for nvim-tree
vim.cmd [[
  highlight NvimTreeNormal guibg=NONE ctermbg=NONE
  highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE
]]
