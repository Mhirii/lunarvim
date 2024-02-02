local M = {}

function M.get_sections()
	local header = {
		type = "text",
		val = {
			[[    __                          _    ___         ]],
			[[   / /   __  ______  ____ _____| |  / (_)___ ___ ]],
			[[  / /   / / / / __ \/ __ `/ ___/ | / / / __ `__ \]],
			[[ / /___/ /_/ / / / / /_/ / /   | |/ / / / / / / /]],
			[[/_____/\__,_/_/ /_/\__,_/_/    |___/_/_/ /_/ /_/ ]],
		},
		opts = {
			hl = "Label",
			shrink_margin = false,
			-- wrap = "overflow";
		},
	}

	local top_buttons = {
		entries = {
			{ "e", lvim.icons.ui.NewFile .. " New File", "<CMD>ene!<CR>" },
		},
	}

	local bottom_buttons = {
		entries = {
			{ "q", "Quit", "<CMD>quit<CR>" },
		},
	}

	local footer = {
		type = "group",
	}

	return {
		header = header,
		top_buttons = top_buttons,
		bottom_buttons = bottom_buttons,
		-- this is probably broken
		footer = footer,
	}
end

return M
