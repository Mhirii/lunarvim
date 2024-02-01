-- Customization
-- =========================================
lvim.leader = " "
-- lvim.colorscheme = "tokyonight" -- set to a custom theme
lvim.transparent_window = true
-- lvim.lsp.code_lens_refresh = true
-- lvim.lsp.installer.setup.automatic_installation = true
reload ("user.options")

-- Override Lunarvim defaults
-- =========================================
-- require("user.builtin").config()

-- Language Specific
-- =========================================
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, {
--   "clangd",
--   "dockerls",
--   "gopls",
--   "golangci_lint_ls",
--   "jdtls",
--   "pyright",
--   "rust_analyzer",
--   "taplo",
--   "texlab",
--   "tsserver",
--   "yamlls",
-- })
-- require("user.null_ls").config()

-- Additional Plugins
-- =========================================
-- require("user.plugins").config()

-- Autocommands
-- =========================================
-- require("user.autocommands").config()

-- Additional Keybindings
-- =========================================
-- require("user.keybinds").config()

--
-- TODO: Bookmarks
-- TODO: bqf
-- TODO: cmp
-- TODO: colorizer
-- TODO: lazygit
-- TODO: Harpoon
-- TODO: icons
-- TODO: inlayhints
-- TODO: neoscroll
-- TODO: numb
-- TODO: noice
-- TODO: surround
-- TODO: codeium
-- TODO: custom lualine 
-- TODO: Override binds
-- TODO: Override tree
-- TODO: Override telescope
-- TODO: Override todo comments
