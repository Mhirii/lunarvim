-- #abcdef
-- Customization
-- =========================================
reload("user.options")
reload("user.icons")
reload("user.utils")
reload("user.settings")

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
reload("user.plugins")

-- Additional Keybindings
-- =========================================
reload("user.keys")
reload("user.whichkey")

--
-- TODO: Aerial
-- TODO: Harpoon
-- TODO: inlayhints
-- TODO: tmux
-- TODO: custom lualine
-- TODO: Override tree
-- TODO: Override telescope
-- TODO: Override todo comments
-- TODO: setup ]d [d
