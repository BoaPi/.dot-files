require("tasktoggler")
-- import nvim-autopairs safely
local tasktoggler_setup, tasktoggler = pcall(require, "tasktoggler")

if not tasktoggler_setup then
  return
end

-- configure autopairs
tasktoggler.setup({})
