vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*.man",
  callback = function()
    vim.bo.filetype = "mania"

    -- Methods
    vim.cmd("syntax match MyLangMethod ':\\w\\+'")
    -- Words
    vim.cmd("syntax match MyLangMethod '\\<\\w\\+\\>'")
    -- Combinators
    vim.cmd("syntax match MyLangCombinator '[?_]'")
    -- Braces and brackets
    vim.cmd("syntax match MyLangIdentifier '[{}]'")
    vim.cmd("syntax match MyLangBraces '[\\[\\]]'")
    -- Numbers
    vim.cmd("syntax match MyLangNumber '\\<\\d\\+\\>'")
    -- Comments
    vim.cmd("syntax match MyLangFunction ';.*$'")

    -- Link to theme colors
    vim.cmd([[
    highlight link MyLangMethod      Keyword
    highlight link MyLangOperator    Operator
    highlight link MyLangBraces      Delimiter
    highlight link MyLangQuote       String
    highlight link MyLangStack       Type
    highlight link MyLangNumber      Number
    highlight link MyLangComment     Comment
    highlight link MyLangSpecial     Special
    highlight link MyLangTodo        Todo

    " Optional / extra highlights
    highlight link MyLangFunction    Function
    highlight link MyLangIdentifier  Identifier
    highlight link MyLangConditional Conditional
    highlight link MyLangStatement   Statement
    highlight link MyLangError       Error
    ]])
  end
})
