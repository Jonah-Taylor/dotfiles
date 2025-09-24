return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require'lspconfig'.clangd.setup{
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
        root_dir = require('lspconfig').util.root_pattern(
          'compile_commands.json',
          'compile_flags.txt', 
          '.clangd',
          '.git',
          'Makefile'
        ),
        on_attach = function(client, bufnr)
          client.server_capabilities.semanticTokensProvider = nil
        end
      }
      
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
