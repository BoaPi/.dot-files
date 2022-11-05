-- import todo-comments safely
local setup, todo_comments = pcall(require, "todo-comments")

if not setup then
  return
end

-- basic setup
todo_comments.setup({})
