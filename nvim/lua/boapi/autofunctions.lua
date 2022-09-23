-- create custom auto command to run on certain buffer interactions
local name = "BoaPi custom auto commands"
local rust_commands = {
    run = { "cargo", "run" },
    fmt = { "cargo", "fmt" },
}


-- formatting rust code before writing buffer
vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup(name, { clear = true }),
    pattern = "*.rs",
    callback = function()
        vim.fn.jobstart(rust_commands["fmt"])
    end,
})

-- run "cargo run" after writing to stdout_buffer
-- getting both outputs from stdout and stderr
local run_main = function(output_bufnr)
    vim.api.nvim_create_autocmd("BufWritePost", {
        group = vim.api.nvim_create_augroup(name, { clear = true }),
        pattern = "main.rs",
        callback = function()
            vim.api.nvim_buf_set_lines(output_bufnr, 0, -1, false, { "output of main.rs" })
            vim.fn.jobstart(rust_commands["run"], {
                stdout_buffered = true,
                on_stdout = Append_data,
                on_stderr = Append_data,
            })
        end,
    })
end
