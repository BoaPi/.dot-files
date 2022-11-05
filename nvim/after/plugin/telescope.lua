-- import telescope safely
local setup, telescope = pcall(require, "telescope")

if not setup then
  return
end

-- setup telescope
telescope.setup({})
