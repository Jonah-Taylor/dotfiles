return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      pre_hook = function(ctx)
        -- Check if current file is a .man file
        if vim.fn.expand('%:e') == 'man' then
          return '; %s'
        end
      end
    })
    
    -- Map Ctrl+/ to toggle comment
    vim.keymap.set('n', '<C-_>', 'gcc', { remap = true })
    vim.keymap.set('v', '<C-_>', 'gcgv', { remap = true })
  end
}
