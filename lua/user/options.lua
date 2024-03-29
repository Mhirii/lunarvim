-- opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
local undodir = join_paths(get_cache_dir(), "undo")
-- lvim.colorscheme = "rose-pine-main"
--
lvim.builtin.indentlines.active = false
lvim.builtin.project.active = false
lvim.builtin.breadcrumbs.active = false
lvim.builtin.treesitter.auto_install = true
lvim.lsp.installer.setup.automatic_installation = true

lvim.transparent_window = vim.g.neovide ~= true
lvim.lsp.installer.setup.automatic_installation = true
lvim.format_on_save.enabled = false
lvim.reload_config_on_save = true
lvim.colorscheme = "lunar"
lvim.builtin.lualine.style = "custom"

vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.cursorline = true -- highlight the current line
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.foldmethod = "manual" -- folding, set to "expr" for treesitter based folding
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.laststatus = 3
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.number = true -- set numbered lines
vim.opt.numberwidth = 2 -- default 4
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.relativenumber = true
vim.opt.ruler = false
vim.opt.scrolloff = 8 -- minimal number of screen lines to keep above and below the cursor.
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.showcmd = true
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.sidescrolloff = 16 -- minimal number of screen lines to keep left and right of the cursor.
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.smartcase = true -- smart case
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.title = true -- set the title of window to the value of the titlestring
vim.opt.undodir = undodir -- set an undo directory
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 100 -- faster completion
vim.opt.wrap = true
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.wo.fillchars = "eob: "
