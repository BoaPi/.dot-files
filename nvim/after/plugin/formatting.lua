local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    html = { "prettierd" },
    javascript = { "prettierd" },
    lua = { "stylua" },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  },
})

vim.keymap.set({ "n", "v" }, "<leader>f", function()
  conform.format({
    lsp_fallback = true,
    async = true,
    timeout_ms = 500,
  })
end)
