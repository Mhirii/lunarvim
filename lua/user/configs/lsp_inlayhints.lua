local M = {}

M.config = function(_, options)

	local status_ok, inlayhints = pcall(require, "lsp-inlayhints")
	if not status_ok then
		return
	end

	vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
	vim.api.nvim_create_autocmd("LspAttach", {
		group = "LspAttach_inlayhints",
		callback = function(args)
			if not (args.data and args.data.client_id) then
				return
			end

			local bufnr = args.buf
			local client = vim.lsp.get_client_by_id(args.data.client_id)
			inlayhints.on_attach(client, bufnr)
    end,
  })
			-- FIXME
			-- define key map for toggle inlay hints: require('lsp-inlayhints').toggle()
			-- lvim.builtin.which_key.mappings["ui"] = { "<cmd>lua require('lsp-inlayhints').toggle()<CR>", "Toggle Inlay Hint" }
			-- vim.api.nvim_set_keymap(
			-- 	"n",
			-- 	"<leader>uI",
			-- 	"<cmd>lua require('lsp-inlayhints').toggle()<CR>",
			-- 	{ noremap = true, silent = true }
			-- )
end

return M
