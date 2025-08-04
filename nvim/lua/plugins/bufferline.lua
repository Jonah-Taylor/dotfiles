return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VimEnter',
  config = function()
    require('bufferline').setup({
      options = {
        -- Numbers on tabs without dots
        numbers = function(opts)
          return string.format('%s', opts.ordinal)
        end,
        -- Click to go to buffer
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,

        bufferline = {
            animation = true,
            scrollable = false,  -- Disable scrolling to force fitting
            auto_toggle_bufferline = false,
        },
        
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
        
        -- Layout - Force tabs to shrink dynamically
        max_name_length = 20,
        max_prefix_length = 15,
        tab_size = 10,  -- Let bufferline calculate size dynamically
        min_tab_width = 6,  -- Let it shrink as needed
        enforce_regular_tabs = true,  -- Allow dynamic sizing
        truncate_names = true,  -- Truncate long names to fit
        mode = "buffers",  -- Ensure we're in buffer mode (not tabs mode)
        diagnostics = false,
        show_buffer_icons = false,
        show_buffer_close_icons = false,  -- Remove close icons to save space
        show_close_icon = false,
        show_tab_indicators = true,
        show_duplicate_prefix = true,  -- Help distinguish similar names
        persist_buffer_sort = true,
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
      
      -- Fixed highlights section with proper transparency
      highlights = {
        background = {
          bg = 'NONE',
          fg = '#888888',  -- Keep text visible, not NONE
        },
        buffer_selected = {
          bg = '#000000',  -- Black background for selected tab
          fg = '#ffffff',  -- White text for selected tab
          bold = true,
        },
        buffer_visible = {
          bg = 'NONE',
          fg = '#cccccc',
        },
        close_button = {
          bg = 'NONE',
          fg = '#888888',
        },
        close_button_selected = {
          bg = '#000000',
          fg = '#ffffff',
        },
        close_button_visible = {
          bg = 'NONE',
          fg = '#cccccc',
        },
        fill = {
          bg = 'NONE',  -- This is crucial for transparency
        },
        indicator_selected = {
          bg = '#000000',
          fg = '#ffffff',
        },
        modified = {
          bg = 'NONE',
          fg = '#ffffff',
        },
        modified_selected = {
          bg = '#000000',
          fg = '#ffffff',
        },
        modified_visible = {
          bg = 'NONE',
          fg = '#999900',
        },
        numbers = {
          bg = 'NONE',
          fg = '#888888',
        },
        numbers_selected = {
          bg = '#000000',
          fg = '#ffffff',
          bold = true,
        },
        numbers_visible = {
          bg = 'NONE',
          fg = '#cccccc',
        },
        separator = {
          bg = 'NONE',
          fg = 'NONE',
        },
        separator_selected = {
          bg = '#000000',
          fg = 'NONE',
        },
        separator_visible = {
          bg = 'NONE',
          fg = 'NONE',
        },
        tab = {
          bg = 'NONE',
          fg = '#888888',
        },
        tab_selected = {
          bg = '#000000',
          fg = '#ffffff',
          bold = true,
        },
        tab_close = {
          bg = 'NONE',
          fg = '#888888',
        },
        -- Additional highlight groups that might interfere
        duplicate_selected = {
          bg = '#000000',
          fg = '#ffffff',
          bold = true,
        },
        duplicate_visible = {
          bg = 'NONE',
          fg = '#cccccc',
        },
        duplicate = {
          bg = 'NONE',
          fg = '#888888',
        },
        pick_selected = {
          bg = '#000000',
          fg = '#ffffff',
          bold = true,
        },
        pick_visible = {
          bg = 'NONE',
          fg = '#cccccc',
        },
        pick = {
          bg = 'NONE',
          fg = '#888888',
        },
      },
    })

        -- Force filler line transparency even after colorscheme reload
    vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.cmd("highlight BufferLineFill guibg=NONE")
        vim.cmd("highlight BufferLineBackground guibg=NONE")
    end,
    })


    -- Custom function to go to buffer by visual position
    local function go_to_buffer_by_position(pos)
      local bufferline = require('bufferline')
      local state = require('bufferline.state')
      
      -- Get the visible components
      if state.components and state.components[pos] then
        vim.cmd('buffer ' .. state.components[pos].id)
      end
    end

    -- Set up keybindings for buffer positions 1-9 (hardcoded)
    vim.keymap.set('n', '<leader>1', function() go_to_buffer_by_position(1) end, { desc = 'Go to buffer 1', silent = true })
    vim.keymap.set('n', '<leader>2', function() go_to_buffer_by_position(2) end, { desc = 'Go to buffer 2', silent = true })
    vim.keymap.set('n', '<leader>3', function() go_to_buffer_by_position(3) end, { desc = 'Go to buffer 3', silent = true })
    vim.keymap.set('n', '<leader>4', function() go_to_buffer_by_position(4) end, { desc = 'Go to buffer 4', silent = true })
    vim.keymap.set('n', '<leader>5', function() go_to_buffer_by_position(5) end, { desc = 'Go to buffer 5', silent = true })
    vim.keymap.set('n', '<leader>6', function() go_to_buffer_by_position(6) end, { desc = 'Go to buffer 6', silent = true })
    vim.keymap.set('n', '<leader>7', function() go_to_buffer_by_position(7) end, { desc = 'Go to buffer 7', silent = true })
    vim.keymap.set('n', '<leader>8', function() go_to_buffer_by_position(8) end, { desc = 'Go to buffer 8', silent = true })
    vim.keymap.set('n', '<leader>9', function() go_to_buffer_by_position(9) end, { desc = 'Go to buffer 9', silent = true })
  end,
  keys = {
    { '<Tab>', '<Cmd>BufferLineCycleNext<CR>' },
    { '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>' },
    { '<leader>cb', '<Cmd>bd<CR>' },
    
    -- Additional useful keybindings
    { '<leader>bp', '<Cmd>BufferLinePick<CR>' },
    { '<leader>bP', '<Cmd>BufferLinePickClose<CR>' },
    { '<leader>ca', '<Cmd>BufferLineCloseOthers<CR>' },
    { '<leader>br', '<Cmd>BufferLineCloseRight<CR>' },
    { '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>' },
    { '<leader>cmn', '<Cmd>BufferLineMoveNext<CR>' },
    { '<leader>cmp', '<Cmd>BufferLineMovePrev<CR>' },
  },
}
