local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup {
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        loadOutDirsFromCheck = true,
        allFeatures = true,
      },
      checkOnSave = {
        command = "clippy",
      },
      procMacro = {
        enable = true,
      },
    },
  },
  on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    -- Key mappings for LSP functions
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- Hover documentation
    vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, opts) -- Go to definition
    vim.keymap.set("n", "<Leader>gr", vim.lsp.buf.references, opts) -- Go to references
    vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, opts) -- Show code actions (useful for missing crates)
  end,
}
