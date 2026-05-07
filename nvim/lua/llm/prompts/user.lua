-- user specific prompt section
-- here we will split string for FIM or handing over whole sections to be replaced
local M = {}

function M.fim(bufnr)
  return "'-- print string paramater 10 times\nlocal function test(string) <CURSOR> end'"
end

function M.rewrite(bufnr)
  return "'<REGION_START>-- print string paramater 10 times\nlocal function test(string) end<REGION_END>'"
end

return M
