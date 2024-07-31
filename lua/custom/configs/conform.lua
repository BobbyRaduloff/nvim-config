--type conform.options
local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    typescript = { "prettier" },
    json = { "prettier" },
    jsx = { "prettier" },
    tsx = { "prettier" },
    sh = { "shfmt" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    prisma = { "prisma-fmt" },
    rust = { "rustfmt" },
    cs = { "omnisharp" },
    go = { "goimports", "gofmt" },
  },

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!

  format_on_save = {
    --   -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
