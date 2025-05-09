local options = {
  formatters = {
    prettier = {
      command = "/usr/bin/prettier",
      args = function(self, ctx)
        local home = os.getenv "HOME"
        local prettierrc = home .. "/.prettierrc"

        return {
          "--config",
          prettierrc,
          "--stdin-filepath",
          ctx.filename,
        }
      end,
    },
  },
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    json = { "prettier" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
return options
