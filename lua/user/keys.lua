lvim.leader = " "
local opts = { noremap = true, silent = true }
local map = lvim.lsp.buffer_mappings
local normal = map.normal_mode
local visual = map.visual_mode

-- Disable
lvim.builtin.which_key.mappings["c"] = {}
lvim.builtin.which_key.mappings["/"] = {}
lvim.builtin.which_key.mappings["q"] = {}
lvim.builtin.which_key.mappings["w"] = {}
normal["<leader>/"] = {}
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

-- Buffer
normal["H"] = { "<cmd>BufferLineCyclePrev<cr>", "Previous" }
normal["L"] = { "<cmd>BufferLineCycleNext<cr>", "Next" }
normal["<leader>x"] = { "<cmd>BufferKill<CR>", "Close Buffer" }

-- Comment
visual["<m-/>"] = { "<Plug>(comment_toggle_linewise_visual)", "Toggle Comment", opts }
normal["<m-/>"] = { "<Plug>(comment_toggle_linewise_current)", "Toggle Comment", opts }

-- Utils
normal["<Esc>"] = { "<cmd>nohlsearch<CR>", "No Highlight" }
normal["<C-s>"] = { "<cmd>:w<CR>", "Save" }
normal["n"] = { "nzz", "Next Match", opts }
normal["N"] = { "Nzz", "Next Match", opts }
normal["K"] = { ":lua require('user.utils').show_doc()<CR>", "Show Documentation" }
normal["gx"] = { [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], "open in browser", opts }
normal["<leader>/"] = { "<cmd>Telescope live_grep<cr>", "󰥨 Grep" }

lvim.builtin.which_key.mappings["c"] = {
	name = "Code",
	a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "󰚔 Code Action" },
	f = { ":lua require('conform').format()<cr>", "󰉢 Format" },
	d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
	w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
}

lvim.builtin.which_key.mappings["q"] = {
	name = "Session",
	s = { [[<cmd>lua require("persistence").load()<cr>]], "󱋢 Load Session for cwd" },
	l = { [[<cmd>lua require("persistence").load({ last = true })<cr>]], "󰋚 Load Last Session" },
	d = { [[<cmd>lua require("persistence").stop()<cr>]], "󱫫 Stop Saving Session" },
}
