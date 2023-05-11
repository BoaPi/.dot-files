-- import null-ls plugin safely
local setup, null_ls = pcall(require, "null-ls")
if not setup then
  return
end

-- frontend related setups
-- checks if the current folder is part of a deno project
function isDenoProject()
  -- look for root folder, therefor look for .git folder
  local root_folder = vim.fs.dirname(vim.fs.find({ ".git" }, { upward = true })[1])
  -- look in root folder for deno.json
  local deno = vim.fs.find({ "deno.json" }, { path = root_folder })[1]

  -- return root folder path of deno project
  if deno then
    return root_folder
  else
    return nil
  end
end

-- checks if the current folder is part of an eslint project
function isEslintProject()
  -- look for root folder, therefor look for .git folder
  local root_folder = vim.fs.dirname(vim.fs.find({ ".git" }, { upward = true })[1])
  -- look in root folder for eslint config files
  local eslint = vim.fs.find({
    ".eslintrc.js",
    ".eslintrc.cjs",
    ".eslintrc.yaml",
    ".eslintrc.yml",
    ".eslintrc.json",
  }, { path = root_folder })[1]
  -- return root folder path of eslint project
  if eslint then
    return root_folder
  else
    return nil
  end
end

local test = isEslintProject()
print("eslint", test)

-- for conciseness
local formatting = null_ls.builtins.formatting -- to setup formatters
-- local diagnostics = null_ls.builtins.diagnostics -- to setup linters

-- to setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = true })

-- configure null_ls
null_ls.setup({
  -- setup formatters & linters
  sources = {
    --  to disable file types use
    --  "formatting.prettier.with({disabled_filetypes: {}})" (see null-ls docs)
    formatting.stylua, -- lua formatter
  },
  -- configure format on save
  on_attach = function(current_client, bufnr)
    if current_client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({
            filter = function(client)
              --  only use null-ls for formatting instead of lsp server
              return client.name == "null-ls"
            end,
            bufnr = bufnr,
          })
        end,
      })
    end
  end,
})

-- add lsp format on save
-- will not be exported and instead registered all the time
vim.api.nvim_create_autocmd("BufWritePre", {
  group = name,
  callback = function()
    vim.lsp.buf.format({
      filter = function(client)
        return client.name ~= "null_ls"
      end,
    })
  end,
})
