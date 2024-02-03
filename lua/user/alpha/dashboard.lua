local M = {}
local banner = {
	"                                                                      ",
	"                                                                      ",
	"                                                                      ",
	"                                                                      ",
	"                                                                      ",
	"                                                                      ",
	"                                                                      ",
	"                                                                    ",
	"      ████ ██████           █████      ██                     ",
	"     ███████████             █████                             ",
	"     █████████ ███████████████████ ███   ███████████   ",
	"    █████████  ███    █████████████ █████ ██████████████   ",
	"   █████████ ██████████ █████████ █████ █████ ████ █████   ",
	" ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
	"██████  █████████████████████ ████ █████ █████ ████ ██████ ",
	"                                                                      ",
	"                                                                      ",
	"                                                                      ",
	"                                                                      ",
	"                                                                      ",
	"                                                                      ",
}

M.banner_small = {
	"                                               ",
	"                                               ",
	"                                               ",
	"                                               ",
	"                                          _.oo.",
	"                  _-u[[/;:,.         .odMMMMMM'",
	"               .o888UU[[[/;:-.. .o@P^    MMM^  ",
	"              oN88888UU[[[/;::-..       dP^    ",
	"             dNMMNN888UU[[[/;:--..  .o@P^      ",
	"            ,MMMMMMN888UU[[/;::-..o@^          ",
	"            NNMMMNN888UU[[[/~.o@P^             ",
	"            888888888UU[[[/o@^-...             ",
	"           oI8888UU[[[/o@P^:--....             ",
	"        .@^  YUU[[[/o@^;::---....              ",
	"      oMP     ^/o@P^;:::---....                ",
	"   .dMMM    .o@^ ^;::---.....                  ",
	"  dMMMMMMM@^`       `^^^^^                     ",
	" YMMMUP^                                       ",
	"                                               ",
	"                                               ",
	"                                               ",
}

function M.get_sections()
	local header = {
		type = "text",
		val = function()
			local alpha_wins = vim.tbl_filter(function(win)
				local buf = vim.api.nvim_win_get_buf(win)
				return vim.api.nvim_buf_get_option(buf, "filetype") == "alpha"
			end, vim.api.nvim_list_wins())

			if vim.api.nvim_win_get_width(alpha_wins[#alpha_wins]) < 80 then
				return M.banner_small
			end
			return banner
		end,
		opts = {
			position = "center",
			hl = "Function",
		},
	}

	local text = require("lvim.interface.text")
	local lvim_version = require("lvim.utils.git").get_lvim_version()

	local footer = {
		type = "text",
		val = text.align_center({ width = 0 }, {
			"",
			"Welcome Back!",
			lvim_version,
		}, 0.5),
		opts = {
			position = "center",
			hl = "Number",
		},
	}

	local buttons = {
		opts = {
			hl_shortcut = "Include",
			spacing = 1,
		},
		entries = {
			{ "f", lvim.icons.ui.FindFile .. "  Find File", "<CMD>Telescope find_files<CR>" },
			{ "n", lvim.icons.ui.NewFile .. "  New File", "<CMD>ene!<CR>" },
			{
				"l",
				lvim.icons.ui.History .. "  Restore Session",
				'<cmd>lua require("persistence").load({ last = true })<cr>',
			},
			{ "r", lvim.icons.ui.FindFile .. "  Recent files", ":Telescope oldfiles <CR>" },
			{ "z", lvim.icons.ui.Search .. "  Zoxide", "<CMD>Telescope zoxide list<CR>" },

			{
				"c",
				lvim.icons.ui.Gear .. "  Configuration",
				"<CMD>edit " .. require("lvim.config"):get_user_config_path() .. " <CR>",
			},
		},
	}
	return {
		header = header,
		buttons = buttons,
		footer = footer,
	}
end

return M
