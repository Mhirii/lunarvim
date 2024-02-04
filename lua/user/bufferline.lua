local colors = require("user.colors.init").base_30

local highlights = {
	warning_diagnostic_visible = {
		fg = colors.orange,
		bg = colors.black,
	},
	warning_visible = {
		fg = colors.orange,
		bg = colors.black,
	},
	info_diagnostic_visible = {
		fg = colors.cyan,
		bg = colors.black,
	},
	info_visible = {
		fg = colors.cyan,
		bg = colors.black,
	},
	hint_diagnostic_visible = {
		fg = colors.green,
		bg = colors.black,
	},
	hint_visible = {
		fg = colors.green,
		bg = colors.black,
	},
	numbers_visible = {
		fg = colors.light_grey,
		bg = colors.black,
	},
	diagnostic_visible = {
		fg = colors.red,
		bg = colors.black,
	},
	numbers = {
		fg = colors.light_grey,
		bg = colors.black,
	},

	--
	separator_selected = {
		fg = colors.black,
		bg = colors.black2,
	},
	modified_selected = {
		italic = false,
		fg = colors.green,
		bg = colors.black2,
	},
	indicator_selected = {
		fg = colors.black2,
		bg = colors.black2,
	},
	close_button_selected = {
		fg = colors.red,
		bg = colors.black2,
	},
	buffer_selected = {
		fg = colors.white,
		bg = colors.black2,
		bold = true,
		italic = false,
	},
	pick_selected = {
		fg = colors.light_grey,
		bg = colors.black2,
		bold = true,
		italic = false,
	},
	duplicate_selected = {
		fg = colors.light_grey,
		bg = colors.black2,
		italic = false,
	},
	error_diagnostic_selected = {
		fg = colors.red,
		bg = colors.black2,
		-- sp = "<colour-value-here>",
		bold = true,
		italic = false,
	},
	error_selected = {
		fg = colors.red,
		bg = colors.black2,
		-- sp = "<colour-value-here>",
		bold = true,
		italic = false,
	},
	warning_diagnostic_selected = {
		fg = colors.red,
		bg = colors.black2,
		-- sp = warning_diagnostic_fg,
		bold = true,
		italic = false,
	},
	warning_selected = {
		fg = colors.red,
		bg = colors.black2,
		-- sp = "<colour-value-here>",
		bold = true,
		italic = false,
	},
	info_diagnostic_selected = {
		fg = colors.cyan,
		bg = colors.black2,
		bold = true,
		italic = false,
	},
	info_selected = {
		fg = colors.cyan,
		bg = colors.black2,
		-- sp = "<colour-value-here>",
		bold = true,
		italic = false,
	},
	hint_diagnostic_selected = {
		fg = colors.green,
		bg = colors.black2,
		-- sp = "<colour-value-here>",
		bold = true,
		italic = false,
	},
	diagnostic_selected = {
		fg = colors.red,
		bg = colors.black2,
		bold = true,
		italic = false,
	},
	hint_selected = {
		fg = colors.green,
		bg = colors.black2,
		bold = true,
		italic = false,
	},

	diagnostic = {
		fg = colors.red,
		bg = colors.black,
	},
	hint = {
		fg = colors.green,
		bg = colors.black,
	},
	hint_diagnostic = {
		fg = colors.green,
		bg = colors.black,
	},
	info = {
		fg = colors.cyan,
		-- sp = "<colour-value-here>",
		bg = colors.black,
	},
	info_diagnostic = {
		fg = colors.cyan,
		-- sp = "<colour-value-here>",
		bg = colors.black,
	},
	warning = {
		fg = colors.red,
		bg = colors.black,
		-- sp = "<colour-value-here>",
	},
	warning_diagnostic = {
		fg = colors.red,
		bg = colors.black,
		-- sp = "<colour-value-here>",
	},
	error_visible = {
		fg = colors.red,
		bg = colors.black,
	},
	error_diagnostic_visible = {
		fg = colors.red,
		bg = colors.black,
	},
	duplicate_visible = {
		fg = colors.light_grey,
		bg = colors.black,
		italic = false,
	},
	duplicate = {
		fg = colors.light_grey,
		bg = colors.black,
		italic = false,
	},
	pick_visible = {
		fg = colors.light_grey,
		bg = colors.black,
		bold = true,
		italic = false,
	},
	pick = {
		fg = colors.light_grey,
		bg = colors.black,
		bold = true,
		italic = false,
	},
	offset_separator = {
		fg = colors.light_grey,
		bg = colors.black,
	},
	background = {
		fg = colors.light_grey,
		bg = colors.black,
	},
	-- Buffers
	buffer_visible = {
		fg = colors.light_grey,
		bg = colors.black,
		italics = false,
	},
	-- For diagnostics = "nvim_lsp"
	error = {
		fg = colors.light_grey,
		bg = colors.black,
	},
	error_diagnostic = {
		fg = colors.light_grey,
		bg = colors.black,
	},
	-- Close buttons
	close_button = {
		fg = colors.light_grey,
		bg = colors.black2,
	},
	close_button_visible = {
		fg = colors.light_grey,
		bg = colors.black,
	},
	fill = {
		fg = colors.grey_fg,
		bg = colors.black,
	},
	-- Modified
	modified = {
		fg = colors.red,
		bg = colors.black,
	},
	modified_visible = {
		fg = colors.red,
		bg = colors.black,
	},
	-- Separators
	separator = {
		fg = colors.black,
		bg = colors.black,
	},
	separator_visible = {
		fg = colors.black,
		bg = colors.black,
	},
}

local opts = {
	active = true,
	highlights = highlights,
	on_config_done = nil,
	options = {
		mode = "buffers", -- set to "tabs" to only show tabpages instead
		numbers = "none", -- can be "none" | "ordinal" | "buffer_id" | "both" | function
		right_mouse_command = "vert sbuffer %d", -- can be a string | function, see "Mouse actions"
		left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
		middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
		indicator = {
			icon = lvim.icons.ui.BoldLineLeft, -- this should be omitted if indicator style is not 'icon'
			style = "icon", -- can also be 'underline'|'none',
		},
		buffer_close_icon = lvim.icons.ui.Close,
		modified_icon = lvim.icons.ui.Circle,
		close_icon = lvim.icons.ui.BoldClose,
		left_trunc_marker = lvim.icons.ui.ArrowCircleLeft,
		right_trunc_marker = lvim.icons.ui.ArrowCircleRight,
		--- name_formatter can be used to change the buffer's label in the bufferline.
		--- Please note some names can/will break the
		--- bufferline so use this at your discretion knowing that it has
		--- some limitations that will *NOT* be fixed.
		name_formatter = function(buf) -- buf contains a "name", "path" and "bufnr"
			-- remove extension from markdown files for example
			if buf.name:match("%.md") then
				return vim.fn.fnamemodify(buf.name, ":t:r")
			end
		end,
		max_name_length = 18,
		max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
		truncate_names = true, -- whether or not tab names should be truncated
		tab_size = 18,
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = false,
		-- NOTE: this will be called a lot so don't do any heavy processing here
		offsets = {
			{
				filetype = "undotree",
				text = "Undotree",
				highlight = "PanelHeading",
				padding = 1,
			},
			{
				filetype = "NvimTree",
				text = "Explorer",
				highlight = "PanelHeading",
				padding = 1,
			},
			{
				filetype = "DiffviewFiles",
				text = "Diff View",
				highlight = "PanelHeading",
				padding = 1,
			},
			{
				filetype = "flutterToolsOutline",
				text = "Flutter Outline",
				highlight = "PanelHeading",
			},
			{
				filetype = "lazy",
				text = "Lazy",
				highlight = "PanelHeading",
				padding = 1,
			},
		},
		color_icons = true, -- whether or not to add the filetype icon highlights
		show_buffer_icons = lvim.use_icons, -- disable filetype icons for buffers
		show_buffer_close_icons = lvim.use_icons,
		show_close_icon = false,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		-- can also be a table containing 2 custom separators
		-- [focused and unfocused]. eg: { '|', '|' }
		separator_style = "slant",
		enforce_regular_tabs = false,
		always_show_bufferline = false,
		hover = {
			enabled = true, -- requires nvim 0.8+
			delay = 200,
			reveal = { "close" },
		},
		sort_by = "id",
	},
}
lvim.builtin.bufferline = opts
