local system = require("llm.prompts.system")
local user = require("llm.prompts.user")
local transport = require("llm.transport")

local M = {}

function M.complete()
  local bufnr = vim.api.nvim_get_current_buf()

  transport.send(system.fim(bufnr), user.fim(bufnr), function(completion)
    vim.notify(completion)
  end)

  -- -- mode() returns 'v' (charwise), 'V' (linewise), or '\22' (blockwise).
  -- local mode = vim.fn.mode()
  --
  -- -- In visuial mode, 'v' marks the start of selection, '.' is the cursor.
  -- -- (The < and > marks only update after leaving visual mode — don't use them here.)
  -- local s = vim.fn.getpos("v")
  -- local e = vim.fn.getpos(".")
  --
  -- -- getregion handles all three visual types correctly. Returns a list of lines.
  -- local lines = vim.fn.getregion(s, e, { type = mode })
  -- local selection = '"' .. table.concat(lines, "\n") .. '"'
end

function M.rewrite()
  local bufnr = vim.api.nvim_get_current_buf()

  transport.send(system.rewrite(bufnr), user.rewrite(bufnr), function(completion)
    vim.notify(completion)
  end)
end

-- the test function is meant to print in the message window a "hello world"
function M.test() end

return M
