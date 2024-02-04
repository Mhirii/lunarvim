local components = reload("lvim.core.lualine.components")
local colors = reload("user.lualine.colors")

local time = function()
	return os.date("%H:%M") .. " " .. lvim.icons.misc.Watch
end

local function diff_source()
	local gitsigns = vim.b.gitsigns_status_dict
	if gitsigns then
		return {
			added = gitsigns.added,
			modified = gitsigns.changed,
			removed = gitsigns.removed,
		}
	end
end

local mode = function()
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

local branch = "%#SLGitIcon#" .. lvim.icons.git.Branch .. "%*" .. "%#SLBranchName#"

return {
	mode = components.mode,
	custom_mode = {
		function()
			return mode()
		end,
		color = function()
			return { bg = mode_color[vim.fn.mode()], fg = colors.bg }
		end,
	},
	branch = components.branch,
	custom_branch = {
		"b:gitsigns_head",
		icon = branch,
		color = function()
			return { bg = colors.bg3, fg = mode_color[vim.fn.mode()] }
		end,
	},
	filename = components.filename,
	custom_filename = {
		"filename",
		color = function()
			return { bg = colors.bg2, fg = mode_color[vim.fn.mode()] }
		end,
		cond = nil,
	},
	time = {
		function()
			return time()
		end,
		color = function()
			return { bg = mode_color[vim.fn.mode()], fg = colors.bg }
		end,
	},
	diff = components.diff,
	python_env = components.python_env,
	diagnostics = components.diagnostics,
	treesitter = components.treesitter,
	lsp = components.lsp,
	location = components.location,
	progress = components.progress,
	spaces = components.spaces,
	encoding = components.encoding,
	filetype = components.filetype,
	scrollbar = components.scrollbar,
}
