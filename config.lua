---@diagnostic disable: undefined-global
-- Customization
-- =========================================
lvim.leader = " "
lvim.colorscheme = "tokyonight" -- set to a custom theme
lvim.transparent_window = true
lvim.debug = false
lvim.log.level = "warn"
lvim.lsp.code_lens_refresh = true
lvim.lsp.installer.setup.automatic_installation = true
require("user.neovim").config()

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Autocommands
-- =========================================
require("user.autocommands").config()

-- Additional Keybindings
-- =========================================
require("user.keybinds").config()
