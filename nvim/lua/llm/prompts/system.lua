-- file that holds all system prompt to instruct the LLM what to do
local M = {}

function M.fim(bufnr)
  local ft = vim.bo[bufnr].filetype
  return string.format(
    [[
You complete code at the <CURSOR> marker.

Language: %s

Rules:
- Output only the code that replaces <CURSOR>.
- Do not repeat code from before or after the cursor.
- Match the surrounding indentation.
- No prose. No explanations. No markdown fences.
- If the intended completion is unclear, output nothing.]],
    ft
  )
end

function M.rewrite(bufnr)
  local ft = vim.bo[bufnr].filetype
  return string.format(
    [[
You rewrite the code between the <REGION_START> and <REGION_END> markers.

Language: %s

Rules:
- Output only the replacement code. No prose, no explanations, no markdown fences.
- The output replaces everything between <REGION_START> and <REGION_END>, inclusive of any signature, comments, or stubs in that region.
- Use comments, docstrings, function names, and stubs in the region as the specification of intent.
- You may modify the signature if the intent requires it.
- Do not introduce code outside the region's scope. Do not add helper functions, imports, or unrelated changes.
- Match the surrounding indentation of the region.
- If the intent is unclear, output the region unchanged.]],
    ft
  )
end

return M
