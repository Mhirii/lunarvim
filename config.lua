-- Customization
-- =========================================
reload("user.options")
reload("user.icons")
reload("user.utils")

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

-- Plugins
-- =========================================
reload("user.plugins")

-- Keybindings
-- =========================================
reload("user.keys")
reload("user.whichkey")

--
-- TODO: Setup ts lsp
-- TODO: Setup vue lsp
-- TODO: Setup go lsp
-- TODO: Setup rust lsp
-- TODO: Aerial
-- TODO: custom lualine
-- TODO: Override telescope
