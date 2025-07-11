return {
  'romgrk/barbar.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  init = function() vim.g.barbar_auto_setup = false end,
  config = function()
    require('barbar').setup()
  end,
  keys = {
    { '<Tab>', '<Cmd>BufferNext<CR>' },
    { '<S-Tab>', '<Cmd>BufferPrevious<CR>' },
    { '<leader>cb', '<Cmd>BufferClose<CR>' },
    { '<leader>ca', '<Cmd>BufferCloseAllButCurrent<CR>' },
    { '<leader>cp', '<Cmd>BufferClosePrevious<CR>' },
  },
}
