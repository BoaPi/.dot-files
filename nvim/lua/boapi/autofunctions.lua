local bufnr = 61

vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("AutoSaveFormatting", { clear = true }),
    pattern = "main.rs",
    callback = function()
        print("File saved!!!")
        vim.fn.jobstart({ "cargo", "run" }, {
            stdout_buffered = true,
            on_stdout = function(_, data)
                if data then
                    print(data)
                    vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
                end
            end,
            on_stderr = function(_, data)
                if data then
                    print(data)
                    vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
                end
            end
        })
    end,
})
