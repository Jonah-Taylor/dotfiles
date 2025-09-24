return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {"gruvbox", "ayu", "kanagawa"},
        livePreview = true,
      })
    end
  }
