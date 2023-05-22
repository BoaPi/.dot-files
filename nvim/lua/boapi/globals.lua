-- print content of values and not only references
P = function(v)
  print(vim.inspect(v))
  return v
end
