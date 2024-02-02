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
	function()
		require("lvim.core.telescope.custom-finders").find_project_files({ previewer = false })
	end,
	"󰩊 Find File",
}

lvim.builtin.which_key.mappings["b"] = {
	name = "Buffers",
	j = { "<cmd>BufferLinePick<cr>", "󱝵 Jump To Buffer" },
	f = { "<cmd>Telescope buffers previewer=false<cr>", "󰮗 Find Buffer" },
	b = { "<cmd>BufferLineCyclePrev<cr>", "󰜱 Previous Buffer" },
	n = { "<cmd>BufferLineCycleNext<cr>", "󰜴 Next Buffer" },
	e = { "<cmd>BufferLinePickClose<cr>", "󱝵 Pick which Buffer to Close" },
	H = { "<cmd>BufferLineCloseLeft<cr>", "󰓊 Close all to the Left" },
	L = { "<cmd>BufferLineCloseRight<cr>", "󰓊 Close all to the Right" },
	D = { "<cmd>BufferLineSortByDirectory<cr>", "󰒼 Sort by Directory" },
	E = { "<cmd>BufferLineSortByExtension<cr>", "󰖽 Sort by Extension" },
	h = { "<cmd>BufferLineMovePrev<CR>", "󰜶 Move Buffer to Right" },
	l = { "<cmd>BufferLineMoveNext<CR>", "󰜳 Move Buffer to Left" },
}

lvim.builtin.which_key.mappings["c"] = {
	name = "Code",
	a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "󰚔 Code Action" },
	f = { ":lua require('conform').format()<cr>", "󰉢 Format" },
	d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "󱂩 Buffer Diagnostics" },
	w = { "<cmd>Telescope diagnostics<cr>", "󱂬 Diagnostics" },
}

lvim.builtin.which_key.mappings["g"] = {
	name = "Git",
	g = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle()<cr>", "Lazygit" },
	j = { "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", "Next Hunk" },
	k = { "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", "Prev Hunk" },
	l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
	p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
	r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
	R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
	s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
	u = {
		"<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
		"Undo Stage Hunk",
	},
	o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
	b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
	c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
	C = {
		"<cmd>Telescope git_bcommits<cr>",
		"Checkout commit(for current file)",
	},
	d = {
		"<cmd>Gitsigns diffthis HEAD<cr>",
		"Git Diff",
	},
}

lvim.builtin.which_key.mappings["p"] = {
	name = "Preview",
	l = { "<cmd>Lazy<cr>", "󰒲 Lazy" },
	d = { ":Glance definitions<CR>", " Preview definition" },
	r = { ":Glance references<CR>", " Preview references" },
	i = { ":Glance implementations<CR>", " Preview implementations" },
	D = { ":Glance type_definitions<CR>", " Preview type_definitions" },
}

lvim.builtin.which_key.mappings["q"] = {
	name = "Session",
	s = { [[<cmd>lua require("persistence").load()<cr>]], "󱋢 Load Session for cwd" },
	l = { [[<cmd>lua require("persistence").load({ last = true })<cr>]], "󰋚 Load Last Session" },
	d = { [[<cmd>lua require("persistence").stop()<cr>]], "󱫫 Stop Saving Session" },
}
