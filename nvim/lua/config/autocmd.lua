local my_group = vim.api.nvim_create_augroup("BoaPi", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = my_group,
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
