local M = {}

M.config = function()
	require("nvim-toggler").setup({
		inverses = {
			["vim"] = "emacs",
			["const"] = "let",
			["interface"] = "type",
			["!=="] = "===",
		},
		keys = {

			"<leader>i",
			mode = { "n", "v" },
			function()
				require("nvim-toggler").toggle()
			end,
			desc = "Toggle",
		},
	})
end

return M
