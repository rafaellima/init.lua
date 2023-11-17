local status, minisurround = pcall(require, "mini.surround")
if not status then
  return
end

minisurround.setup()
