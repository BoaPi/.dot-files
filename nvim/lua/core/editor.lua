-- key mappings
vim.g.mapleader = " " -- new prefix key

-- line number options
vim.opt.nu = true -- show current line number where the cursor is
vim.opt.relativenumber = true -- adding relative line numbers to where the cursor is

-- cursor options
vim.opt.guicursor = "" -- set cursor to be fat

-- tab options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- line options
vim.opt.wrap = false -- prevent line wrapping
vim.opt.colorcolumn = "120,150" -- highlight column 80, 120 & 150 for not to long lines
vim.opt.signcolumn = "yes"

-- window options
vim.opt.laststatus = 3 -- set status bar to only appear once for all split views
vim.opt.splitright = true

-- mix options
vim.opt.scrolloff = 20 -- set minimum number of lines, where scrolling starts

-- netrw options
vim.g.netrw_liststyle = 3 -- set list style to tree

-- set spell options
vim.opt.spell = true
vim.opt.spelllang = "en_us,de"

-- completion test
vim.opt.completeopt = "menu,menuone,noselect,popup" -- Ensures the menu appears even for a single match and uses the native popup window.
vim.o.autocomplete = true

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp_completion", { clear = true }),
  callback = function(args)
    local client_id = args.data.client_id
    if not client_id then
      return
    end

    local client = vim.lsp.get_client_by_id(client_id)
    if client and client:supports_method("textDocument/completion") then
      -- Enable native LSP completion for this client + buffer
      vim.lsp.completion.enable(true, client_id, args.buf, {
        autotrigger = true, -- auto-show menu as you type (recommended)
        -- You can also set { autotrigger = false } and trigger manually with <C-x><C-o>
      })
    end
  end,
})

require("vim._core.ui2").enable()

vim.opt.winborder = "double"
-- key mappings
vim.g.mapleader = " " -- new prefix key

-- line number options
vim.opt.nu = true -- show current line number where the cursor is
vim.opt.relativenumber = true -- adding relative line numbers to where the cursor is

-- cursor options
vim.opt.guicursor = "" -- set cursor to be fat

-- tab options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- line options
vim.opt.wrap = false -- prevent line wrapping
vim.opt.colorcolumn = "120,150" -- highlight column 80, 120 & 150 for not to long lines
vim.opt.signcolumn = "yes"

-- window options
vim.opt.laststatus = 3 -- set status bar to only appear once for all split views
vim.opt.splitright = true

-- mix options
vim.opt.scrolloff = 20 -- set minimum number of lines, where scrolling starts

-- netrw options
vim.g.netrw_liststyle = 3 -- set list style to tree

-- set spell options
vim.opt.spell = true
vim.opt.spelllang = "en_us,de"
