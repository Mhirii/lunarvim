local M = {}

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

-- better overall experience with marks
M.marks = true

-- good
M.lsplens = true

-- edit your fs like you edit your buffers
M.oil = true

return M
