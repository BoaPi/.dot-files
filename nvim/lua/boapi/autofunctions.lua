-- create custom auto command to run on certain buffer interactions
local name = "BoaPi custom auto commands"
local rust_commands = {
    run = { "cargo", "run" },
}

-- run "cargo run" after writing to stdout_buffer
-- getting both outputs from stdout and stderr
local run_main = function(output_bufnr)
    vim.api.nvim_create_autocmd("BufWritePost", {
        group = vim.api.nvim_create_augroup(name, { clear = true }),
        pattern = "main.rs",
        callback = function()
            local append_data = function(_, data)
                if data then
                    vim.api.nvim_buf_set_lines(output_bufnr, -1, -1, false, data)
                end
            end

            vim.api.nvim_buf_set_lines(output_bufnr, 0, -1, false, { "output of main.rs" })
            vim.fn.jobstart(rust_commands["run"], {
                stdout_buffered = true,
                on_stdout = append_data,
                on_stderr = append_data,
            })
        end,
    })
end

-- add custom user command
vim.api.nvim_create_user_command("BoaPiRustRun", function()
    local bufnr = vim.fn.input("Bufnr for main.rs output: ")
    run_main(tonumber(bufnr))
end, {})
