-- create custom auto command to run on certain buffer interactions
local M = {}
local name = "BoaPi"
local output_head = "output of main.rs"
local rust_commands = {
    run = { "cargo", "run" },
}

-- create auto command group for all custom commands
vim.api.nvim_create_augroup(name, { clear = true })

-- run "cargo run" after writing to stdout_buffer
-- getting both outputs from stdout and stderr
local run_main = function(output_bufnr)
    vim.api.nvim_create_autocmd("BufWritePost", {
        group = name,
        pattern = "main.rs",
        callback = function()
            local append_data = function(_, data)
                if data then
                    vim.api.nvim_buf_set_lines(output_bufnr, -1, -1, false, data)
                end
            end

            vim.api.nvim_buf_set_lines(output_bufnr, 0, -1, false, { output_head })
            vim.fn.jobstart(rust_commands["run"], {
                stdout_buffered = true,
                on_stdout = append_data,
                on_stderr = append_data,
            })
        end,
    })
end

-- add lsp format on save
-- will not be exported and instead registered all the time
vim.api.nvim_create_autocmd("BufWritePre", {
    group = name,
    callback = function()
        vim.lsp.buf.format()
    end
})

M = {
    run_main = run_main
}

return M
