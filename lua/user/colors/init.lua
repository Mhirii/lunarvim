local current_theme = lvim.colorscheme

if current_theme == "lunar" then
	return require("user.colors.tokyonight")
end
if current_theme == "tokyonight" then
	return require("user.colors.tokyonight")
end
if current_theme == "rose-pine" then
	return require("user.colors.rosepine")
end
