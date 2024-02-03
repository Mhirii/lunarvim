-- Disable
lvim.builtin.which_key.mappings["c"] = {}
lvim.builtin.which_key.mappings["/"] = {}
lvim.builtin.which_key.mappings["q"] = {}
lvim.builtin.which_key.mappings["w"] = {}
lvim.builtin.which_key.mappings["h"] = {}

-- Override
lvim.builtin.which_key.mappings[";"] = { "<cmd>Alpha<CR>", "󰕮 Dashboard" }
lvim.builtin.which_key.mappings["e"] = { "<cmd>NvimTreeToggle<CR>", "󰙅 Explorer" }
lvim.builtin.which_key.mappings["f"] = {
	"<cmd>Telescope find_files<cr>",
	"󰩊 Find File",
}
lvim.builtin.which_key.mappings["<Tab>"] = {
	function()
		require("lvim.core.telescope.custom-finders").find_project_files({ previewer = false })
	end,
	"󰩊 Find File",
}

lvim.builtin.which_key.mappings["b"] = {
	name = "Buffers",
	b = { "<cmd>BufferLineCyclePrev<cr>", "󰜱 Previous Buffer" },
	D = { "<cmd>BufferLineSortByDirectory<cr>", "󰒼 Sort by Directory" },
	E = { "<cmd>BufferLineSortByExtension<cr>", "󰖽 Sort by Extension" },
	e = { "<cmd>BufferLinePickClose<cr>", "󱝵 Pick which Buffer to Close" },
	f = { "<cmd>Telescope buffers previewer=false<cr>", "󱦞 Find Buffer" },
	h = { "<cmd>BufferLineMovePrev<CR>", "󰜶 Move Buffer to Right" },
	H = { "<cmd>BufferLineCloseLeft<cr>", "󰭌 Close all to the Left" },
	j = { "<cmd>BufferLinePick<cr>", "󱝵 Jump To Buffer" },
	L = { "<cmd>BufferLineCloseRight<cr>", "󰭌 Close all to the Right" },
	l = { "<cmd>BufferLineMoveNext<CR>", "󰜳 Move Buffer to Left" },
	n = { "<cmd>BufferLineCycleNext<cr>", "󰜴 Next Buffer" },
}

lvim.builtin.which_key.mappings["c"] = {
	name = "Code",
	a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "󰚔 Code Action" },
	d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "󱂩 Buffer Diagnostics" },
	f = { ":lua require('conform').format()<cr>", "󰉢 Format" },
	w = { "<cmd>Telescope diagnostics<cr>", "󱂬 Diagnostics" },
}
lvim.builtin.which_key.vmappings["c"] = {
	name = "Code",
	a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "󰚔 Code Action" },
}

lvim.builtin.which_key.mappings["g"] = {
	name = "Git",
	b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
	C = { "<cmd>Telescope git_bcommits<cr>", "Checkout commit(for current file)" },
	c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
	d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Git Diff" },
	g = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle()<cr>", "Lazygit" },
	j = { "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", "Next Hunk" },
	k = { "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", "Prev Hunk" },
	l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
	o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
	p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
	R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
	r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
	s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
	u = { "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", "Undo Stage Hunk" },
}

lvim.builtin.which_key.mappings["m"] = {
	name = "Mark",
	b = {
		function()
			require("bookmarks").add_bookmarks()
		end,
		"󰃄 Add Bookmark",
	},
	t = {
		function()
			require("bookmarks").toggle_bookmarks()
		end,
		"󰧏 Toggle Bookmarks",
	},
}

lvim.builtin.which_key.mappings["p"] = {
	name = "Preview",
	D = { ":Glance type_definitions<CR>", " Preview type_definitions" },
	d = { ":Glance definitions<CR>", " Preview definition" },
	i = { ":Glance implementations<CR>", " Preview implementations" },
	l = { "<cmd>Lazy<cr>", "󰒲 Lazy" },
	r = { ":Glance references<CR>", " Preview references" },
}

lvim.builtin.which_key.mappings["q"] = {
	name = "Session",
	d = { '<cmd>lua require("persistence").stop()<cr>', "󱫫 Stop Saving Session" },
	l = { '<cmd>lua require("persistence").load({ last = true })<cr>', "󰋚 Load Last Session" },
	s = { '<cmd>lua require("persistence").load()<cr>', "󱋢 Load Session for cwd" },
}

lvim.builtin.which_key.mappings["s"] = {
	name = "Search",
	C = { "<cmd>Telescope commands<cr>", "󱆃 Commands" },
	b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
	c = { "<cmd>Telescope colorscheme<cr>", "󱥚 Colorscheme" },
	d = { "<CMD>TodoTelescope<CR>", "󱞀 Todo Comment (Telescope)" },
	f = {
		function()
			require("lvim.core.telescope.custom-finders").find_project_files({ previewer = false })
		end,
		"󰮗 Find File",
	},
	H = { "<cmd>Telescope highlights<cr>", "󰸱 Find highlight groups" },
	h = { "<cmd>Telescope help_tags<cr>", "󰋖 Find Help" },
	k = { "<cmd>Telescope keymaps<cr>", "󰥻 Keymaps" },
	l = { "<cmd>Telescope resume<cr>", "󰋚 Resume last search" },
	M = { "<cmd>Telescope man_pages<cr>", "󱔘 Man Pages" },
	p = {
		"<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
		"󱥚 Colorscheme with Preview",
	},
	R = { "<cmd>Telescope registers<cr>", "󱘟 Registers" },
	r = { "<cmd>Telescope oldfiles<cr>", "󱋢 Open Recent File" },
	t = { "<cmd>Telescope live_grep<cr>", "󱩾 Text" },
	x = { "<CMD>Telescope zoxide list<CR>", "󰉕 Zoxide" },
}

lvim.builtin.which_key.mappings["t"] = {
	name = "Toggle",
	d = { "<cmd>TodoTrouble<cr>", "󱞀 Todo Comment (Trouble)" },
	f = { ':lua require("trouble").toggle("quickfix")<CR>', "󰌵 Toggle QuickFix (Trouble)" },
	l = { ":LspLensToggle<CR>", "󰙎 Toggle Lens" },
	o = { ":lua require('oil').toggle_float()<CR>", "󰉕 Toggle Oil" },
	r = { ':lua require("trouble").toggle()<CR>', "󱂩 Toggle Trouble" },
}
