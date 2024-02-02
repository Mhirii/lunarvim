local M = {}

lvim.builtin.indentlines.active = false
lvim.builtin.project.active = false
lvim.builtin.treesitter.auto_install = true

-- similar to marks but better
M.bookmarks = true

-- colorizes hex codes
M.colorizer = true

-- Formatter
M.conform = true

-- Load last session
M.persist = true

-- Escape when you type jj or jk
M.escape = true

-- Peek (like vscode)
M.glance = true

-- Smooth Scrolling
if vim.g.neovide then
	M.neoscroll = false
else
	M.neoscroll = true
end

M.surround = true

-- beautiful indent lines
M.indentscope = true

-- better overall experience with marks
M.marks = true

-- good
M.lsplens = true

-- edit your fs like you edit your buffers
M.oil = true

-- AI
M.codeium = true

-- good ui
M.trouble = true

-- ui improvement
M.dressing = true

-- cool ui for notifications and LSP progress
M.fidget = true

return M
