vim.api.nvim_create_autocmd(
  { 'BufNewFile','BufReadPost' },
  {
    callback = function() vim.treesitter.start() end,
})
