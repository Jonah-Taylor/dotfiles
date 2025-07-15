return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup({
      view = {
        side = "right",
      },
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      actions = {
        open_file = {
          quit_on_open = false,  -- Don't close on file open
        },
      },
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        
        -- Load default mappings first
        api.config.mappings.default_on_attach(bufnr)
        
        -- Custom function to open file but stay in nvim-tree
        local function open_file_stay_in_tree()
          local node = api.tree.get_node_under_cursor()
          if node and node.type == "file" then
            -- Open the file in the previous window
            vim.cmd("wincmd p")
            vim.cmd("edit " .. node.absolute_path)
            -- Return focus to nvim-tree
            vim.cmd("wincmd p")
          end
        end
        
        -- Override the default <CR> and <2-LeftMouse> mappings
        vim.keymap.set('n', '<CR>', open_file_stay_in_tree, { buffer = bufnr, desc = "Open file, stay in tree" })
        vim.keymap.set('n', '<2-LeftMouse>', open_file_stay_in_tree, { buffer = bufnr, desc = "Open file, stay in tree" })
        
        -- Optional: Add a mapping to open file and go to it (original behavior)
        vim.keymap.set('n', '<C-CR>', function()
          api.node.open.edit()
        end, { buffer = bufnr, desc = "Open file and go to it" })
      end,
    })
    
    -- Auto-close nvim-tree when it's the last window
    vim.api.nvim_create_autocmd("QuitPre", {
      callback = function()
        local tree_wins = {}
        local floating_wins = {}
        local wins = vim.api.nvim_list_wins()
        for _, w in ipairs(wins) do
          local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
          if bufname:match("NvimTree_") ~= nil then
            table.insert(tree_wins, w)
          end
          if vim.api.nvim_win_get_config(w).relative ~= '' then
            table.insert(floating_wins, w)
          end
        end
        if 1 == #wins - #floating_wins - #tree_wins then
          -- If there is only one window, and it's nvim-tree, close it
          for _, w in ipairs(tree_wins) do
            vim.api.nvim_win_close(w, true)
          end
        end
      end
    })
  end,
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle File Tree" },
  },
}
