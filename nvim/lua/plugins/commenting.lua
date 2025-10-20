return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      pre_hook = function(ctx)
        if vim.fn.expand('%:e') == 'man' then
          return '; %s'
        end
      end
    })
    
    -- Map Ctrl+/ to toggle comment using the actual keystroke
    vim.keymap.set('n', '<C-/>', 'gcc', { remap = true })
    vim.keymap.set('v', '<C-/>', 'gcgv', { remap = true })
  end
}
