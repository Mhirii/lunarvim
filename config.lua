-- Customization
-- =========================================
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.wo.fillchars = "eob: "
lvim.leader = " "
lvim.colorscheme = "tokyonight" -- set to a custom theme
lvim.transparent_window = true
lvim.debug = false
vim.lsp.set_log_level("error")
lvim.log.level = "warn"
require("user.neovim").config()
lvim.lsp.code_lens_refresh = true
lvim.lsp.installer.setup.automatic_installation = true

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Autocommands
-- =========================================
require("user.autocommands").config()

-- Additional Keybindings
-- =========================================
require("user.keybinds").config()
