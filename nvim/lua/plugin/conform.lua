local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    javascript = { "oxfmt", "prettierd", stop_after_first = true, lsp_format = "fallback" },
    typescript = { "oxfmt", "prettierd", stop_after_first = true, lsp_format = "fallback" },
    javascriptreact = { "oxfmt", "prettierd", stop_after_first = true, lsp_format = "fallback" },
    typescriptreact = { "oxfmt", "prettierd", stop_after_first = true, lsp_format = "fallback" },
    css = { "oxfmt" },
    html = { "oxfmt" },
    json = { "oxfmt" },
    yaml = { "oxfmt" },
    markdown = { "oxfmt" },
    lua = { "stylua" },
    go = { "gofmt" },
  },
})
