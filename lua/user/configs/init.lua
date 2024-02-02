local settings = reload("lua.user.settings")

if settings.bookmarks then
	reload("lua.user.configs.bookmarks")
end

if settings.colorizer then
	reload("lua.user.configs.colorizer")
end

if settings.conform then
	reload("lua.user.configs.conform")
end
