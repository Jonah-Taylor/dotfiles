return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VimEnter',
  config = function()
    require('bufferline').setup({
      options = {
        -- Numbers on tabs
        numbers = "ordinal",
        -- Click to go to buffer
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        
        -- Appearance
        indicator = {
          icon = '▎',
          style = 'icon',
        },
        buffer_close_icon = '×',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        
        -- Layout
        max_name_length = 30,
        max_prefix_length = 15,
        tab_size = 21,
        diagnostics = false,
        show_buffer_icons = false,
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = "thin",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        
        -- Sidebar integration
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
          },
          {
            filetype = "neo-tree",
            text = "File Explorer", 
            highlight = "Directory",
            text_align = "left"
          }
        },
        
        -- Sorting
        sort_by = 'id',
        
        -- Custom filter
        custom_filter = function(buf_number, buf_numbers)
          -- Filter out filetypes you don't want to see
          local filetype = vim.bo[buf_number].filetype
          if filetype == "qf" then
            return false
          end
          return true
        end,
      },
      
      -- Custom highlights for black background with dark gray selected tab
      highlights = {
        background = {
          bg = '#000000',
          fg = '#888888',
        },
        buffer_selected = {
          bg = '#404040',
          fg = '#ffffff',
          bold = true,
        },
        buffer_visible = {
          bg = '#000000',
          fg = '#cccccc',
        },
        close_button = {
          bg = '#000000',
          fg = '#888888',
        },
        close_button_selected = {
          bg = '#404040',
          fg = '#ffffff',
        },
        close_button_visible = {
          bg = '#000000',
          fg = '#cccccc',
        },
        fill = {
          bg = '#000000',
        },
        indicator_selected = {
          bg = '#404040',
          fg = '#ffffff',
        },
        modified = {
          bg = '#000000',
          fg = '#ffcc00',
        },
        modified_selected = {
          bg = '#404040',
          fg = '#ffcc00',
        },
        modified_visible = {
          bg = '#000000',
          fg = '#ffcc00',
        },
        numbers = {
          bg = '#000000',
          fg = '#888888',
        },
        numbers_selected = {
          bg = '#404040',
          fg = '#ffffff',
          bold = true,
        },
        numbers_visible = {
          bg = '#000000',
          fg = '#cccccc',
        },
        separator = {
          bg = '#000000',
          fg = '#000000',
        },
        separator_selected = {
          bg = '#404040',
          fg = '#000000',
        },
        separator_visible = {
          bg = '#000000',
          fg = '#000000',
        },
        tab = {
          bg = '#000000',
          fg = '#888888',
        },
        tab_selected = {
          bg = '#404040',
          fg = '#ffffff',
          bold = true,
        },
        tab_close = {
          bg = '#000000',
          fg = '#888888',
        },
      },
    })
  end,
  keys = {
    { '<Tab>', '<Cmd>BufferLineCycleNext<CR>' },
    { '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>' },
    { '<leader>cb', '<Cmd>bd<CR>' },
    
    -- Direct buffer access by index
    { '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>' },
    { '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>' },
    { '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>' },
    { '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>' },
    { '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>' },
    { '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>' },
    { '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>' },
    { '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>' },
    { '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>' },
    
    -- Additional useful keybindings
    { '<leader>bp', '<Cmd>BufferLinePick<CR>' },
    { '<leader>bP', '<Cmd>BufferLinePickClose<CR>' },
    { '<leader>ba', '<Cmd>BufferLineCloseOthers<CR>' },
    { '<leader>br', '<Cmd>BufferLineCloseRight<CR>' },
    { '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>' },
    { '<leader>bmn', '<Cmd>BufferLineMoveNext<CR>' },
    { '<leader>bmp', '<Cmd>BufferLineMovePrev<CR>' },
  },
}
