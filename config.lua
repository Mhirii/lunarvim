-- #abcdef
-- Customization
-- =========================================
reload "user.options"

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
reload "user.plugins"

-- Autocommands
-- =========================================
-- require("user.autocommands").config()

-- Additional Keybindings
-- =========================================
-- require("user.keybinds").config()

--
-- TODO: Aerial
-- TODO: bqf
-- TODO: cmp
-- TODO: conform
-- TODO: lazygit
-- TODO: Harpoon
-- TODO: icons
-- TODO: inlayhints
-- TODO: marks
-- TODO: neoscroll
-- TODO: numb
-- TODO: noice
-- TODO: notify
-- TODO: persist
-- TODO: surround
-- TODO: trouble
-- TODO: tmux
-- TODO: codeium
-- TODO: custom lualine 
-- TODO: Override binds
-- TODO: Override tree
-- TODO: Override telescope
-- TODO: Override todo comments
