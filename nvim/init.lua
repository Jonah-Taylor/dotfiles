-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.opt.scrolloff = 8 -- 8 lines of vertical margin
-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- Import your plugins from the lua/plugins directory
    { import = "plugins" },
  },
  -- Configure any options here
  checker = { enabled = false }, -- automatically check for plugin updates
  change_detection = { 
        enabled = false,
        notify = false,
  }, -- disable notifications for config changes
})

-- No auto indent
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt.formatoptions:remove({ "r", "o" })
  end,
})

-- Remove the separator by making it invisible
vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "NONE", bg = "NONE" })

-- Load your other modules
require("options")
require("mappings")
