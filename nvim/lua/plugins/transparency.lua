return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup({
      extra_groups = {
        "Normal",
        "NormalNC",
        "NormalFloat",
        "NvimTreeNormal",
        "TelescopeNormal",
        "TelescopeBorder",
        "BufferLineFill",         -- ← Bufferline background area
        "BufferLineBackground",   -- ← Inactive tabs
        "BufferLineTabClose",
        "BufferLineSeparator",
        "BufferLineSeparatorVisible",
        "BufferLineSeparatorSelected",
      },
      exclude_groups = {}, -- You can leave this empty
    })

    vim.cmd("TransparentEnable")
  end,
}
