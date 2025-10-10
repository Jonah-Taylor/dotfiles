return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- New way: Use vim.lsp.config instead of require('lspconfig')
      vim.lsp.config('clangd', {
        cmd = {
          "clangd", 
          "--background-index",
          "--header-insertion=never",
          "--completion-style=bundled",
          "--function-arg-placeholders=false",
          "--clang-tidy",
          "--cross-file-rename",
        },
        filetypes = {"c", "cpp", "objc", "objcpp"},
        root_markers = {
          'compile_commands.json',
          'compile_flags.txt', 
          '.clangd',
          '.git',
          'Makefile'
        },
        on_attach = function(client, bufnr)
          client.server_capabilities.semanticTokensProvider = nil
        end
      })
      
      -- Enable clangd
      vim.lsp.enable('clangd')
      
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = true,
      })
      vim.opt.updatetime = 250
    end
  }
}
