local colors = require("user.colors.init").base_30

local highlights = {
	background = {
		fg = colors.grey_fg,
		bg = colors.black2,
	},

	-- Buffers
	buffer_selected = {
		fg = colors.white,
		bg = colors.black,
		gui = "bold",
	},
	buffer_visible = {
		fg = colors.light_grey,
		bg = colors.black2,
	},

	-- For diagnostics = "nvim_lsp"
	error = {
		fg = colors.light_grey,
		bg = colors.black2,
	},
	error_diagnostic = {
		fg = colors.light_grey,
		bg = colors.black2,
	},

	-- Close buttons
	close_button = {
		fg = colors.light_grey,
		bg = colors.black2,
	},
	close_button_visible = {
		fg = colors.light_grey,
		bg = colors.black2,
	},
	close_button_selected = {
		fg = colors.red,
		bg = colors.black,
	},
	fill = {
		fg = colors.grey_fg,
		bg = colors.black2,
	},
	indicator_selected = {
		fg = colors.black,
		bg = colors.black,
	},

	-- Modified
	modified = {
		fg = colors.red,
		bg = colors.black2,
	},
	modified_visible = {
		fg = colors.red,
		bg = colors.black2,
	},
	modified_selected = {
		fg = colors.green,
		bg = colors.black,
	},

	-- Separators
	separator = {
		fg = colors.black2,
		bg = colors.black2,
	},
	separator_visible = {
		fg = colors.black2,
		bg = colors.black2,
	},
	separator_selected = {
		fg = colors.black2,
		bg = colors.black3,
	},
	-- Tabs
	tab = {
		fg = colors.light_grey,
		bg = colors.one_bg3,
	},
	tab_selected = {
		fg = colors.black2,
		bg = colors.nord_blue,
	},
	tab_close = {
		fg = colors.red,
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
			enabled = false, -- requires nvim 0.8+
			delay = 200,
			reveal = { "close" },
		},
		sort_by = "id",
	},
}
lvim.builtin.bufferline = opts
