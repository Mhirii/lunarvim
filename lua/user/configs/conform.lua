reload("conform").setup({
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },

		-- Use a sub-list to run only the first available formatter
		javascript = { "biome" },
		vue = { { "prettierd", "prettier" } },

		css = { "prettier" },
		html = { "prettier" },

		sh = { "shfmt" },
		fish = { "fish_indent" },

		go = { "goimports", "gofmt", "golines" },

		["*"] = { "codespell" },
		-- "_" filetype to format on filetypes that aren't configured.
		["_"] = { "trim_whitespace" },
	},

	-- adding same formatter for multiple filetypes can look too much work for some
	-- instead of the above code you could just use a loop! the config is just a table after all!

	format_on_save = function(bufnr)
		-- Disable autoformat on certain filetypes
		local ignore_filetypes = { "sql", "java" }
		if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
			return
		end
		-- Disable with a global or buffer-local variable
		if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
			return
		end
		-- Disable autoformat for files in a certain path
		local bufname = vim.api.nvim_buf_get_name(bufnr)
		if bufname:match("/node_modules/") then
			return
		end
		-- ...additional logic...
		return { timeout_ms = 500, lsp_fallback = true }
	end,
})

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		require("go.format").goimport()
	end,
	group = format_sync_grp,
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	pattern = "*",
-- 	callback = function(args)
-- 		require("conform").format({ bufnr = args.buf })
-- 	end,
-- })
