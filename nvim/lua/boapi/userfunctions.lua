-- custom command
local auto_functions = require("boapi.autofunctions")

-- RunRust
-- runs rust code in the given buffer
vim.api.nvim_create_user_command("RunRust", function()
  vim.api.nvim_cmd({ cmd = "vnew" }, {})
  local bufnr = vim.api.nvim_get_current_buf()
  auto_functions.run_main(tonumber(bufnr))
end, {})

-- SwitchTab
-- function to switch between vim tabs quickly
-- get user input
-- get current tab count
-- switch to tab if input is valid and tab present
vim.api.nvim_create_user_command("SwitchTab", function()
  local input = tonumber(vim.fn.getcharstr())
  local tab_count = vim.fn.tabpagenr("$")

  if input ~= nil and input <= tab_count then
    vim.api.nvim_cmd({ cmd = "tabn", args = { input } }, {})
  end
end, {})

-- ToggleToDo
-- function to check or un-check a To-Do in .md files
vim.api.nvim_create_user_command("ToggleToDo", function()
  local line = vim.api.nvim_get_current_line()
  local newLine

  -- pattern to match start of a to-do with "*" or "-"
  local checkPattern = "(%s*[%*|%-] )%[[x]%](.*)"
  local unCheckPattern = "(%s*[%*|%-] )%[[%s]%](.*)"

  -- create matches for each pattern
  local matchCheck = string.match(line, checkPattern)
  local matchUnCheck = string.match(line, unCheckPattern)

  -- if one pattern matches replace line with new state
  if matchCheck then
    newLine = string.gsub(line, checkPattern, "%1[ ]%2")
  elseif matchUnCheck then
    newLine = string.gsub(line, unCheckPattern, "%1[x]%2")
  end

  -- replace line with new toggled line
  vim.api.nvim_set_current_line(newLine)
end, {})
