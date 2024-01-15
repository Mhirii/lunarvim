local M = {}

M.config = function()
	vim.g.dashboard_disable_statusline = 1
	vim.g.dashboard_enable_session = 0
	vim.g.toggle_theme_icon = "   "
	vim.lsp.set_log_level("error")
	vim.o.sessionoptions = "buffers,curdir,folds,globals,help,tabpages,winpos,winsize"
	vim.opt.autowriteall = true -- automatically :write before running commands and changing files
	vim.opt.clipboard = "unnamedplus"
	vim.opt.cmdheight = 1
	vim.opt.completeopt = { "menu", "menuone", "noselect" }
	vim.opt.confirm = true -- make vim prompt me to save before doing destructive things
	vim.opt.cursorline = true -- Highlight the current line
	vim.opt.guifont = "FiraCode Nerd Font:h13"
	vim.opt.joinspaces = false
	vim.opt.list = true
	vim.opt.pumblend = 10
	vim.opt.redrawtime = 1500
	vim.opt.relativenumber = true
	vim.opt.termguicolors = true
	vim.opt.timeoutlen = 250
	vim.opt.ttimeoutlen = 10
	vim.opt.ttyfast = true
	vim.opt.updatetime = 100
	vim.opt.wrap = true
	vim.wo.fillchars = "eob: "
	vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
	vim.wo.foldlevel = 4
	vim.wo.foldmethod = "expr"
	vim.wo.foldminlines = 1
	vim.wo.foldnestmax = 3

	if vim.g.neovide then
		vim.g.neovide_confirm_quit = true
		vim.g.neovide_cursor_animate_in_insert_mode = true
		vim.g.neovide_cursor_animation_length = 0.15
		vim.g.neovide_cursor_trail_size = 0.7
		vim.g.neovide_cursor_vfx_mode = "pixiedust"
		vim.g.neovide_cursor_vfx_particle_density = 20
		vim.g.neovide_cursor_vfx_particle_lifetime = 3
		vim.g.neovide_floating_blur_amount_x = 4.0
		vim.g.neovide_floating_blur_amount_y = 4.0
		vim.g.neovide_floating_shadow = true
		vim.g.neovide_floating_z_height = 10
		vim.g.neovide_hide_mouse_when_typing = false
		vim.g.neovide_light_angle_degrees = 45
		vim.g.neovide_light_radius = 5
		vim.g.neovide_no_idle = false -- only enable this if animations appear to stop too early.
		vim.g.neovide_profiler = false
		vim.g.neovide_refresh_rate = 144
		vim.g.neovide_remember_window_size = false
		vim.g.neovide_scale_factor = 1.0
		vim.g.neovide_scroll_animation_length = 0.5
		vim.g.neovide_theme = "auto"
		vim.g.neovide_transparency = 0.8
		vim.o.guifont = "MonaspiceNe Nerd Font:h14"
		vim.opt.linespace = 0
	end
end

return M
