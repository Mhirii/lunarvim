local M = {}

M.config = function()
	local status_ok, cb = pcall(require, "comment-box")
	if not status_ok then
		return
	end
	cb.setup = {
		keys = {
			{ "<leader>cbb", mode = { "n", "v" }, "<Cmd>CBccbox<CR>", desc = "Box Title" },
			{ "<leader>cB", mode = { "n", "v" }, "<Cmd>CBccbox<CR>", desc = "Box Title" },
			{ "<leader>cbt", mode = { "n", "v" }, "<Cmd>CBllline5<CR>", desc = "Title Line" },
			{ "<leader>cbl", mode = { "n", "v" }, "<Cmd>CBline<CR>", desc = "Simple Line" },
			{ "<leader>cbm", mode = { "n", "v" }, "<Cmd>CBllbox12<CR>", desc = "Mark Box" },
			{ "<leader>cbd", mode = { "n", "v" }, "<Cmd>CBd<CR>", desc = "Remove comment" },
		},
	}
end

return M
