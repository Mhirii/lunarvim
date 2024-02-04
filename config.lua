-- Customization
--
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

-- Overrides
-- =========================================
reload("user.overrides")

-- Keybindings
-- =========================================
reload("user.keys")
reload("user.whichkey")

if vim.g.neovide then
	reload("user.neovide")
end

--
-- TODO: Setup TSC
-- TODO: typescript tools
-- TODO: Setup volar
-- TODO: Setup go lsp
-- TODO: Setup rust lsp
