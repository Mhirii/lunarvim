local M = {}

M.config = function()

  local status_ok, trouble = pcall(require, "trouble")
  if not status_ok then
    return
  end

  trouble.setup {
    auto_open = false,
    auto_close = true,
    padding = false,
    height = 10,
    use_diagnostic_signs = true,
  }
end

return M
