return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup()
    
    -- Map Ctrl+/ to toggle comment
    vim.keymap.set('n', '<C-_>', 'gcc', { remap = true })
    vim.keymap.set('v', '<C-_>', 'gcgv', { remap = true })
  end
}
