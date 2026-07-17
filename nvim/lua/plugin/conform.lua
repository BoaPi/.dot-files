local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    javascript = { "oxfmt" },
    typescript = { "oxfmt" },
    javascriptreact = { "oxfmt" },
    typescriptreact = { "oxfmt" },
    css = { "oxfmt" },
    html = { "oxfmt" },
    json = { "oxfmt" },
    yaml = { "oxfmt" },
    markdown = { "oxfmt" },
    lua = { "stylua" },
    go = { "gofmt" },
  },
})
