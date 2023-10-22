-- Customization
-- =========================================
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.wo.fillchars='eob: '
lvim.builtin.sell_your_soul_to_devil = { active = false, prada = false, openai = false } -- if you want microsoft to abuse your soul
lvim.builtin.lastplace = { active = false } -- change to false if you are jumping to future
lvim.builtin.tabnine = { active = true } -- change to false if you don't like tabnine
lvim.builtin.persistence = { active = true } -- change to false if you don't want persistence
lvim.builtin.presence = { active = false } -- change to true if you want discord presence
lvim.builtin.orgmode = { active = false } -- change to true if you want orgmode.nvim
lvim.builtin.dap.active = true -- change this to enable/disable debugging
lvim.builtin.fancy_statusline = { active = true } -- enable/disable fancy statusline
lvim.builtin.fancy_wild_menu = { active = true } -- enable/disable cmp-cmdline
lvim.builtin.fancy_diff = { active = true } -- enable/disable fancier git diff
lvim.builtin.lua_dev = { active = true } -- change this to enable/disable folke/lua_dev
lvim.builtin.test_runner = { active = true, runner = "ultest" } -- change this to enable/disable ultest or neotest
lvim.builtin.cheat = { active = true } -- enable/disable cheat.sh integration
lvim.builtin.sql_integration = { active = false } -- use sql integration
lvim.builtin.smooth_scroll = "" -- for smoth scrolling, can be "cinnamon", "neoscroll" or ""
lvim.builtin.neoclip = { active = true, enable_persistent_history = false }
lvim.builtin.nonumber_unfocus = false -- diffrentiate between focused and non focused windows
lvim.builtin.custom_web_devicons = false -- install https://github.com/Nguyen-Hoang-Nam/mini-file-icons
lvim.builtin.harpoon = { active = true } -- use the harpoon plugin
lvim.builtin.remote_dev = { active = false } -- enable/disable remote development
lvim.builtin.cursorline = { active = true } -- use a bit fancier cursorline
lvim.builtin.motion_provider = "hop" -- change this to use different motion providers ( hop or leap or flash)
lvim.builtin.hlslens = { active = true } -- enable/disable hlslens
lvim.builtin.csv_support = false -- enable/disable csv support
lvim.builtin.sidebar = { active = false } -- enable/disable sidebar
lvim.builtin.task_runner = "" -- change this to use different task runners ( "async_tasks" or "overseer" or "")
lvim.builtin.winbar_provider = "treesitter" -- can be "filename" or "treesitter" or "navic" or ""
lvim.builtin.metals = {
	active = false, -- enable/disable nvim-metals for scala development
	fallbackScalaVersion = "3.2.0-RC3",
	serverVersion = "1.0.1",
	bloopVersion = "1.5.11",
}
lvim.builtin.collaborative_editing = { active = false } -- enable/disable collaborative editing
lvim.builtin.file_browser = { active = false } -- enable/disable telescope file browser
lvim.builtin.sniprun = { active = true } -- enable/disable sniprun
lvim.builtin.tag_provider = "vista" -- change this to use different tag providers ( symbols-outline or vista )
lvim.builtin.global_statusline = false -- set true to use global statusline
lvim.builtin.dressing = { active = true } -- enable to override vim.ui.input and vim.ui.select with telescope
lvim.builtin.refactoring = { active = true } -- enable to use refactoring.nvim code_actions
lvim.builtin.tmux_lualine = false -- use vim-tpipeline to integrate lualine and tmux
lvim.builtin.lsp_lines = true -- enable/disable lsp_lines to display lsp virtual text below instead of behind
lvim.builtin.legendary = { active = true } -- enable/disable legendary plugin ( ctrl-p command )
lvim.builtin.tree_provider = "nvimtree" -- can be "neo-tree" or "nvimtree" or ""
lvim.builtin.lir.active = false
lvim.builtin.breadcrumbs.active = false
lvim.builtin.illuminate.active = true
lvim.builtin.noice = { active = false } -- enables noice.nvim and inc-rename.nvim
lvim.builtin.go_programming = { active = true } -- gopher.nvim + nvim-dap-go
lvim.builtin.python_programming = { active = true } -- swenv.nvim + nvim-dap-python + requirements.txt.vim
lvim.builtin.web_programming = { active = true } -- typescript.nvim + package-info.nvim
lvim.builtin.rust_programming = { active = false } -- rust_tools.nvim + crates.nvim
lvim.builtin.cpp_programming = { active = true } -- clangd_extensions.nvim + make-tools.nvim
lvim.builtin.cmp.cmdline.enable = true
lvim.builtin.borderless_cmp = false
lvim.builtin.colored_args = false -- if true then sets up hlargs.nvim
lvim.builtin.bigfile.active = true
lvim.builtin.indentlines.mine = false
-- WARN: mind plugin is deprecated ( use with caution )
lvim.builtin.mind = { active = false, root_path = "~/.mind" } -- enable/disable mind.nvim

-- Override Lunarvim defaults
-- =========================================
require("user.builtin").config()

-- StatusLine
-- =========================================
if lvim.builtin.fancy_statusline.active then
	require("user.lualine").config()
end

-- Debugging
-- =========================================
if lvim.builtin.dap.active then
	require("user.dap").config()
end

-- Language Specific
-- =========================================
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, {
	"clangd",
	"dockerls",
	"gopls",
	"golangci_lint_ls",
	"jdtls",
	"pyright",
	"rust_analyzer",
	"taplo",
	"texlab",
	"tsserver",
	"yamlls",
})
require("user.null_ls").config()

-- -- Additional Plugins
-- -- =========================================
require("user.plugins").config()

-- -- Autocommands
-- -- =========================================
require("user.autocommands").config()

-- -- Additional Keybindings
-- -- =========================================
require("user.keybindings").config()

if vim.g.neovide then
	-- Put anything you want to happen only in Neovide here
	vim.g.neovide_confirm_quit = true
	vim.o.guifont = "JetbrainsMono Nerd Font:h9"
	vim.g.neovide_profiler = false
	vim.g.neovide_scale_factor = 1.0
	vim.g.neovide_theme = "auto"
	vim.g.neovide_transparency = 0.7
	vim.g.neovide_cursor_animate_in_insert_mode = true
	vim.g.neovide_scroll_animation_length = 0.5
	vim.g.neovide_cursor_animation_length = 0.15
	vim.g.neovide_cursor_trail_size = 0.7
	vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_vfx_particle_lifetime = 2
  vim.g.neovide_cursor_vfx_particle_density = 14
end
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
