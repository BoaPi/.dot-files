-- custom command
local auto_functions = require("boapi.autofunctions")

-- RunRust
-- runs rust code in the given buffer
vim.api.nvim_create_user_command("RunRust", function()
    -- TODO: automatically open a "vnew"
    -- get bufnr
    -- apply this to the auto function "run_main"
    local bufnr = vim.fn.input("Bufnr for main.rs output: ")
    auto_functions.run_main(tonumber(bufnr))
end, {})

-- SwitchTab
-- function to switch between vim tabs quickly
-- get user input
-- get current tab count
-- switch to tab if input is valid and tab present
vim.api.nvim_create_user_command("SwitchTab", function()
    local input = tonumber(vim.fn.getcharstr())
    local tab_count = vim.fn.tabpagenr('$')

    if (input ~= nil and input <= tab_count) then
        vim.api.nvim_cmd({ cmd = 'tabn', args = { input } }, {})
    end
end, {})
