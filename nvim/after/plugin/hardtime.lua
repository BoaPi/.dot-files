-- import hardtime safely
local hardtime_setup, hardtime = pcall(require, "hardtime")

if not hardtime_setup then
  return
end

hardtime.setup()
