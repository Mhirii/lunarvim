local M = {}

M.show_doc = function()
	local filetype = vim.bo.filetype
	if vim.tbl_contains({ "vim", "help" }, filetype) then
		vim.cmd("h " .. vim.fn.expand("<cword>"))
	elseif vim.tbl_contains({ "man" }, filetype) then
		vim.cmd("Man " .. vim.fn.expand("<cword>"))
	elseif vim.fn.expand("%:t") == "Cargo.toml" then
		require("crates").show_popup()
	else
		vim.lsp.buf.hover()
	end
end

M.bind_x = function(key, action, desc, opts)
	lvim.lsp.buffer_mappings.normal_mode[key] = { action, desc, opts }
	lvim.lsp.buffer_mappings.insert_mode[key] = { action, desc, opts }
	lvim.lsp.buffer_mappings.visual_mode[key] = { action, desc, opts }
end

return M
