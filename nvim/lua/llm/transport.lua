-- actual interaction layer with the LLM pulling everything together
-- sending to the to the LLM
-- awaiting result
-- calls on_result()
local M = {}

local function clean_completion(s)
  s = vim.trim(s)
  -- Strip leading ```language and trailing ``` if present
  s = s:gsub("^```%w*\n", ""):gsub("\n```$", "")
  return s
end

function M.send(system_prompt, user_prompt, on_result)
  vim.system({
    "claude",
    "-p",
    "--max-turns",
    "1",
    "--model",
    "haiku",
    "--output-format",
    "json",
    "--system-prompt",
    system_prompt,
    user_prompt,
  }, { text = true }, function(out)
    vim.schedule(function()
      if out.code ~= 0 then
        vim.notify("claude exited " .. out.code .. ": " .. (out.stderr or ""), vim.log.levels.ERROR)
        return
      end

      local ok, data = pcall(vim.json.decode, out.stdout)
      if not ok then
        vim.notify("bad JSON: " .. tostring(data), vim.log.levels.ERROR)
        return
      end

      if data.is_error then
        vim.notify("claude reported error: " .. vim.inspect(data), vim.log.levels.ERROR)
        return
      end

      local completion = clean_completion(data.result)
      on_result(completion)
    end)
  end)
end

return M
