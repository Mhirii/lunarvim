lvim.leader = " "
local opts = { noremap = true, silent = true }
local map = lvim.lsp.buffer_mappings
local normal = map.normal_mode
local visual = map.visual_mode

normal["<leader>/"] = {}

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
normal["n"] = { "nzz", "󰜴 Next Match" }
normal["N"] = { "Nzz", "󰜱 Prev Match" }
normal["K"] = { ":lua require('user.utils').show_doc()<CR>", "󱓷 Show Documentation" }
normal["gx"] = { [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], "open in browser", opts }
normal["<leader>/"] = { "<cmd>Telescope live_grep<cr>", "󱩾 Grep" }
