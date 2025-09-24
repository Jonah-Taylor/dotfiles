return {
  
  -- Catppuccin theme (alternative)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,
        show_end_of_buffer = false,
        term_colors = false,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
        no_italic = false,
        no_bold = false,
        no_underline = false,
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          telescope = true,
          which_key = true,
        },
      })
    end,
  },
  
-- Gruvbox theme (alternative)
{
  "ellisonleao/gruvbox.nvim",
  lazy = true,
  config = function()
    require("gruvbox").setup({
      terminal_colors = false,
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true,
      contrast = "soft", -- can be "hard", "soft" or empty string
      overrides = {
        -- Main editor background
        Normal = { bg = "#000000" },
        NormalFloat = { bg = "#000000" },
        NormalNC = { bg = "#000000" }, -- Non-current windows
        
        -- Tab line (the bar containing all tabs)
        TabLine = { bg = "#000000" },
        TabLineSel = { bg = "#000000", fg = "#ebdbb2" }, -- keeping gruvbox light text
        TabLineFill = { bg = "#000000" },
        
        -- Status line
        StatusLine = { bg = "#000000", fg = "#ebdbb2" },
        StatusLineNC = { bg = "#000000", fg = "#928374" },
        
        -- Command line and messages
        MsgArea = { bg = "#000000" },
        
        -- Popup menus
        Pmenu = { bg = "#000000", fg = "#ebdbb2" },
        PmenuSel = { bg = "#3c3836", fg = "#ebdbb2" }, -- Keep selection visible
        PmenuSbar = { bg = "#000000" },
        PmenuThumb = { bg = "#665c54" },
        
        -- Floating windows
        FloatBorder = { bg = "#000000", fg = "#928374" },
        
        -- Splits and separators
        WinSeparator = { fg = "#000000", bg = "#000000" },
        VertSplit = { fg = "#000000", bg = "#000000" },
        NvimTreeWinSeparator = { fg = "#000000", bg = "NONE" },
        
        -- Sidebar backgrounds (nvim-tree, etc.)
        NvimTreeNormal = { bg = "#000000" },
        NvimTreeEndOfBuffer = { bg = "#000000" },
        
        -- Sign column
        SignColumn = { bg = "#000000" },
        
        -- Line numbers
        LineNr = { bg = "#000000", fg = "#928374" },
        CursorLineNr = { bg = "#000000", fg = "#fabd2f" },
        
        -- Folding
        Folded = { bg = "#000000", fg = "#928374" },
        FoldColumn = { bg = "#000000" },
        
        -- Git signs (if using gitsigns.nvim)
        GitSignsAdd = { bg = "#000000" },
        GitSignsChange = { bg = "#000000" },
        GitSignsDelete = { bg = "#000000" },
        
        -- Diagnostic signs
        DiagnosticSignError = { bg = "#000000" },
        DiagnosticSignWarn = { bg = "#000000" },
        DiagnosticSignInfo = { bg = "#000000" },
        DiagnosticSignHint = { bg = "#000000" },
        
        -- End of buffer (~ symbols)
        EndOfBuffer = { bg = "#000000", fg = "#000000" }, -- Hide ~ symbols
        
        -- Window title
        WinTitle = { bg = "#000000", fg = "#ebdbb2" },
        
        -- Terminal
        Terminal = { bg = "#000000" },
      },
      dim_inactive = false,
      -- transparent_mode = true,
    })
  end,
},
 {
  "projekt0n/github-nvim-theme",
  config = function()
    vim.cmd.colorscheme "github_dark_dimmed"
  end,
 },
{
  "mcchrish/zenbones.nvim",
  dependencies = "rktjmp/lush.nvim",
  config = function()
    vim.cmd.colorscheme "zenbones"
  end
},
{
  "projekt0n/github-nvim-theme",
  config = function()
    vim.cmd.colorscheme "github_dark_default"  -- Less dimmed than dimmed
  end
},
{
  "kdheepak/monochrome.nvim",
  config = function()
    vim.cmd.colorscheme "monochrome"
  end
},
{
  "xero/miasma.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme miasma")
  end,
},
{
  "rebelot/kanagawa.nvim",
  priority = 1000, -- Load early since it's a colorscheme
  config = function()
    -- Optional: configure kanagawa
    require('kanagawa').setup({
      compile = false,   -- enable compiling the colorscheme
      undercurl = true,  -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,    -- do not set background color
      dimInactive = false,    -- dim inactive window `:h hl-NormalNC`
      terminalColors = true,  -- define vim.g.terminal_color_{0,17}
      colors = {              -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      theme = "dragon",         -- Load "wave" theme when 'background' option is not set
      background = {          -- map the value of 'background' option to a theme
        dark = "wave",        -- try "dragon" !
        light = "lotus"
      },
    })

    -- Set the colorscheme
    vim.cmd("colorscheme kanagawa")
  end,
}
}
