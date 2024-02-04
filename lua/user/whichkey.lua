local icons = lvim.icons
-- Disable
lvim.builtin.which_key.mappings["c"] = {}
lvim.builtin.which_key.mappings["/"] = {}
lvim.builtin.which_key.mappings["q"] = {}
lvim.builtin.which_key.mappings["w"] = {}
-- lvim.builtin.which_key.mappings["h"] = {}

-- Override
lvim.builtin.which_key.mappings[";"] = { "<cmd>Alpha<CR>", icons.ui.Dashboard .. " Dashboard" }
lvim.builtin.which_key.mappings["e"] = { "<cmd>NvimTreeToggle<CR>", icons.ui.Stacks .. " Explorer" }
lvim.builtin.which_key.mappings["f"] = {
	"<cmd>Telescope find_files<cr>",
	icons.ui.FindFile .. " Find File",
}
lvim.builtin.which_key.mappings["<Tab>"] = {
	function()
		require("lvim.core.telescope.custom-finders").find_project_files(require("telescope.themes").get_dropdown({
			previewer = false,
			layout_config = {
				prompt_position = "top",
			},
			border = true,
		}))
	end,
	icons.ui.FindFile .. " Find File",
}

lvim.builtin.which_key.mappings["b"] = {
	name = "Buffers",
	b = { "<cmd>BufferLineCyclePrev<cr>", icons.ui.BoldArrowLeft .. " Previous Buffer" },
	D = { "<cmd>BufferLineSortByDirectory<cr>", icons.ui.FileSubmodule .. " Sort by Directory" },
	E = { "<cmd>BufferLineSortByExtension<cr>", icons.ui.FileCode .. " Sort by Extension" },
	e = { "<cmd>BufferLinePickClose<cr>", icons.ui.Close .. " Close Buffer ( Pick )" },
	f = { "<cmd>Telescope buffers previewer=false<cr>", icons.ui.Telescope .. " Find Buffer" },
	h = { "<cmd>BufferLineMovePrev<CR>", icons.ui.Move .. " Move Buffer to Right" },
	H = { "<cmd>BufferLineCloseLeft<cr>", icons.ui.Close .. " Close all to the Left" },
	j = { "<cmd>BufferLinePick<cr>", icons.ui.Watches .. " Jump To Buffer" },
	L = { "<cmd>BufferLineCloseRight<cr>", icons.ui.Close .. " Close all to the Right" },
	l = { "<cmd>BufferLineMoveNext<CR>", icons.ui.Move .. " Move Buffer to Left" },
	n = { "<cmd>BufferLineCycleNext<cr>", icons.ui.BoldArrowRight .. " Next Buffer" },
}

lvim.builtin.which_key.mappings["c"] = {
	name = "Code",
	a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", icons.ui.Lightbulb .. " Code Action" },
	d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "󱂩 Buffer Diagnostics" },
	f = { ":lua require('conform').format()<cr>", "󰉢 Format" },
	i = { "<cmd>Telescope import<cr>", icons.misc.Package .. " Import" },
	w = { "<cmd>Telescope diagnostics<cr>", "󱂬 Diagnostics" },
}
lvim.builtin.which_key.vmappings["c"] = {
	name = "Code",
	a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", icons.ui.Lightbulb .. " Code Action" },
}

lvim.builtin.which_key.mappings["g"] = {
	name = "Git",
	-- TODO: replace icons
	b = {},
	C = {},
	c = {},
	d = { "<cmd>Gitsigns diffthis HEAD<cr>", icons.git.Diff .. " Git Diff" },
	g = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle()<cr>", icons.git.Octoface .. " Lazygit" },
	j = {
		"<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>",
		icons.ui.ChevronShortDown .. " Next Hunk",
	},
	k = {
		"<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>",
		icons.ui.ChevronShortDown .. " Prev Hunk",
	},
	l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", icons.ui.Comment .. " Blame" },
	o = { "<cmd>Telescope git_status<cr>", icons.ui.File .. " Open changed file" },
	p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", icons.ui.Preview .. " Preview Hunk" },
	R = {},
	r = {},
	s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
	t = { "<cmd>Tardis<cr>", icons.ui.History .. " Tardis" },
	u = { "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", "Undo Stage Hunk" },
}

lvim.builtin.which_key.mappings["m"] = {
	name = "Mark",
	b = {
		function()
			require("bookmarks").add_bookmarks()
		end,
		icons.ui.BookMark .. " Add Bookmark",
	},
	t = {
		function()
			require("bookmarks").toggle_bookmarks()
		end,
		icons.ui.Layout .. " Toggle Bookmarks",
	},
}

lvim.builtin.which_key.mappings["p"] = {
	name = "Preview",
	D = { ":Glance type_definitions<CR>", icons.kind.TypeParameter .. " Preview type_definitions" },
	d = { ":Glance definitions<CR>", icons.kind.Enum .. " Preview definition" },
	i = { ":Glance implementations<CR>", icons.ui.GotoFile .. " Preview implementations" },
	l = { "<cmd>Lazy<cr>", "󰒲 Lazy" },
	r = { ":Glance references<CR>", icons.kind.Reference .. " Preview references" },
}

lvim.builtin.which_key.mappings["q"] = {
	name = "Session",
	d = { '<cmd>lua require("persistence").stop()<cr>', icons.ui.Close .. " Stop Saving Session" },
	l = { '<cmd>lua require("persistence").load({ last = true })<cr>', icons.ui.History .. " Load Last Session" },
	s = { '<cmd>lua require("persistence").load()<cr>', icons.ui.EmptyFolder .. " Load Session for cwd" },
}

lvim.builtin.which_key.mappings["s"] = {
	name = "Search",
	-- TODO: replace icons
	C = { "<cmd>Telescope commands<cr>", "󱆃 Commands" },
	b = { "<cmd>Telescope git_branches<cr>", icons.git.Branch .. "Checkout branch" },
	c = { "<cmd>Telescope colorscheme<cr>", "󱥚 Colorscheme" },
	d = { "<CMD>TodoTelescope<CR>", icons.ui.CheckList .. "󱞀 Todo Comment (Telescope)" },
	f = {
		function()
			require("lvim.core.telescope.custom-finders").find_project_files({ previewer = false })
		end,
		icons.ui.FindFile .. " Find File",
	},
	H = { "<cmd>Telescope highlights<cr>", "󰸱 Find highlight groups" },
	h = { "<cmd>Telescope help_tags<cr>", "󰋖 Find Help" },
	k = { "<cmd>Telescope keymaps<cr>", icons.ui.Keyboard .. " Keymaps" },
	l = { "<cmd>Telescope resume<cr>", icons.ui.Search .. " Resume last search" },
	M = { "<cmd>Telescope man_pages<cr>", icons.ui.Files .. " Man Pages" },
	p = {
		"<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
		"󱥚 Colorscheme with Preview",
	},
	R = { "<cmd>Telescope registers<cr>", "󱘟 Registers" },
	r = { "<cmd>Telescope oldfiles<cr>", icons.ui.History .. " Open Recent File" },
	t = { "<cmd>Telescope live_grep<cr>", icons.ui.Text .. " Text" },
	x = { "<CMD>Telescope zoxide list<CR>", icons.ui.FileSubmodule .. " Zoxide" },
}

lvim.builtin.which_key.mappings["t"] = {
	name = "Toggle",
	d = { "<cmd>TodoTrouble<cr>", icons.ui.CheckList .. " Todo Comment (Trouble)" },
	f = {
		':lua require("trouble").toggle("quickfix")<CR>',
		icons.ui.LightbulbAutofix .. " Toggle QuickFix (Trouble)",
	},
	l = { ":LspLensToggle<CR>", icons.ui.Comment .. " Toggle Lens" },
	o = { ":lua require('oil').toggle_float()<CR>", icons.ui.Layout .. " Toggle Oil" },
	r = { ':lua require("trouble").toggle()<CR>', icons.ui.SplitVertical .. " Toggle Trouble" },
}
