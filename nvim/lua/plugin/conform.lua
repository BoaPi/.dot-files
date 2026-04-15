local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    javascript = { "prettierd" },
    -- css = { "prettierd" },
    -- html = { "prettierd" },
    -- json = { "prettierd" },
    -- yaml = { "prettierd" },
    markdown = { "prettierd" },
    lua = { "stylua" },
  },
})
