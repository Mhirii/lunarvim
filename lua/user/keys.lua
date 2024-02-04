lvim.leader = " "
local opts = { noremap = true, silent = true }
local map = lvim.lsp.buffer_mappings
local normal = map.normal_mode
local visual = map.visual_mode

normal["<leader>/"] = {}

-- So that when i paste over selection, the selection does not replace the register
-- visual["p"] = { "P", "paste" }

-- Buffer
normal["H"] = { "<cmd>BufferLineCyclePrev<cr>", "󰜱 Previous" }
normal["L"] = { "<cmd>BufferLineCycleNext<cr>", "󰜴 Next" }
normal["<leader>x"] = { "<cmd>BufferKill<CR>", "󰭌 Close Buffer" }

-- Comment
visual["<m-/>"] = { "<Plug>(comment_toggle_linewise_visual)", "󰡡 Toggle Comment", opts }
normal["<m-/>"] = { "<Plug>(comment_toggle_linewise_current)", "󰆉 Toggle Comment", opts }

-- Utils
normal["<Esc>"] = { "<cmd>nohlsearch<CR>", "No Highlight" }
normal["<C-s>"] = { "<cmd>:w<CR>", "󱇨 Save" }
normal["gx"] = { [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], "open in browser", opts }

-- Center cursor after finding next/prev march
normal["n"] = false
normal["N"] = false
normal["n"] = { "nzz", "󰜴 Next Match" }
normal["N"] = { "Nzz", "󰜱 Prev Match" }

-- better hover doc
normal["K"] = { ":lua require('user.utils').show_doc()<CR>", "󱓷 Show Documentation" }

-- live grep
normal["<leader>/"] = { "<cmd>Telescope live_grep<cr>", "󱩾 Grep" }

normal["<A-h>"] = { require("smart-splits").resize_left, "Resize left" }
normal["<A-j>"] = { require("smart-splits").resize_down, "Resize down" }
normal["<A-k>"] = { require("smart-splits").resize_up, "Resize up" }
normal["<A-l>"] = { require("smart-splits").resize_right, "Resize right" }

-- moving between splits
normal["<C-h>"] = { require("smart-splits").move_cursor_left, "Move cursor left" }
normal["<C-j>"] = { require("smart-splits").move_cursor_down, "Move cursor down" }
normal["<C-k>"] = { require("smart-splits").move_cursor_up, "Move cursor up" }
normal["<C-l>"] = { require("smart-splits").move_cursor_right, "Move cursor right" }
-- swapping buffers between windows
normal["<leader><leader>h"] = { require("smart-splits").swap_buf_left, "Swap buffer left" }
normal["<leader><leader>j"] = { require("smart-splits").swap_buf_down, "Swap buffer down" }
normal["<leader><leader>k"] = { require("smart-splits").swap_buf_up, "Swap buffer up" }
normal["<leader><leader>l"] = { require("smart-splits").swap_buf_right, "Swap buffer right" }

normal["]d"] = {
	function()
		vim.diagnostic.goto_next({ float = { border = "rounded" } })
	end,
	"Next diagnostic",
}
normal["[d"] = {
	function()
		vim.diagnostic.goto_prev({ float = { border = "rounded" } })
	end,
	"Prev diagnostic",
}
