-- import saga plugin safely
local saga_status, saga = pcall(require, "lspsaga")

if not saga_status then
  return
end

saga.setup({})
