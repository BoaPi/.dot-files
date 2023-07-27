local stylua_status, stylua = pcall(require, "stylua")
if not stylua_status then
  return
end

-- add formatter for Lua with stylua
local custom_augroup = vim.api.nvim_create_augroup("BoaPi", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.lua",
  group = custom_augroup,
  callback = function()
    stylua.format()
  end,
})

-- add formatter with eslint

-- add formatter with prettier

-- add formatter for svelte
