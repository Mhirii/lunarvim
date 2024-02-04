local M = {}
local components = reload("lvim.core.lualine.components")
local colors = reload("user.lualine.colors")

local time = function()
	return os.date("%H:%M") .. " " .. lvim.icons.misc.Watch
end

local c_mode = function()
	local mod = vim.fn.mode()

	local normal = " 󰊠 "
	local replace = "  "
	local command = "  "
	local visual = "  "
	local insert = " 󰊠 "

	if mod == "n" or mod == "no" or mod == "nov" then
		return normal
	elseif mod == "i" or mod == "ic" or mod == "ix" then
		return insert
	elseif mod == "V" or mod == "v" or mod == "vs" or mod == "Vs" or mod == "cv" then
		return visual
	elseif mod == "c" or mod == "ce" then
		return command
	elseif mod == "r" or mod == "rm" or mod == "r?" or mod == "R" or mod == "Rc" or mod == "Rv" or mod == "Rv" then
		return replace
	end
	return normal
end

local mode_color = {
	n = colors.blue,
	i = colors.green,
	v = colors.purple,
	[""] = colors.purple,
	V = colors.purple,
	c = colors.cyan,
	no = colors.magenta,
	s = colors.orange,
	S = colors.orange,
	[""] = colors.orange,
	ic = colors.yellow,
	R = colors.red,
	Rv = colors.red,
	cv = colors.red,
	ce = colors.red,
	r = colors.cyan,
	rm = colors.cyan,
	["r?"] = colors.cyan,
	["!"] = colors.red,
	t = colors.red,
}

-- Plugin activation indicator
local function get_file_info()
	return vim.fn.expand("%:t"), vim.fn.expand("%:e")
end

M.custom_mode = {
	function()
		return c_mode()
	end,
	color = function()
		return { bg = mode_color[vim.fn.mode()], fg = colors.bg }
	end,
}
M.custom_branch = {
	"b:gitsigns_head",
	icon = lvim.icons.git.Branch,
}
M.custom_filename = {
	"filename",
	color = function()
		return { fg = mode_color[vim.fn.mode()] }
	end,
	cond = nil,
}
M.time = {
	function()
		return time()
	end,
	color = function()
		return { bg = mode_color[vim.fn.mode()], fg = colors.bg }
	end,
}
M.fileinfo = get_file_info()

-- Defaults
M.mode = components.mode
M.branch = components.branch
M.filename = components.filename
M.diff = components.diff
M.python_env = components.python_env
M.diagnostics = components.diagnostics
M.treesitter = components.treesitter
M.lsp = components.lsp
M.location = components.location
M.progress = components.progress
M.spaces = components.spaces
M.encoding = components.encoding
M.filetype = components.filetype
M.scrollbar = components.scrollbar
return M
