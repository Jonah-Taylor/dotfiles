return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "mattn/emmet-vim",
    lazy = false,
    config = function()
      -- Remove the user_emmet_leader_key setting
      vim.api.nvim_set_keymap("i", "<C-g>", "<plug>(emmet-expand-abbr)", { silent = true })
      vim.api.nvim_set_keymap("n", "<C-g>", "<plug>(emmet-expand-abbr)", { silent = true })
    end,
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
