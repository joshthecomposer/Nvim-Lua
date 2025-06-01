local uname = vim.loop.os_uname()

return {
  is_mac = uname.sysname == "Darwin",
  is_windows = uname.sysname == "Windows_NT",
}
