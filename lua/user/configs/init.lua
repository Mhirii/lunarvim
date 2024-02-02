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

if settings.persist then
	reload("lua.user.configs.persist")
end

if settings.glance then
	reload("lua.user.configs.glance")
end

if settings.neoscroll then
	reload("lua.user.configs.neoscroll")
end

if settings.marks then
	reload("lua.user.configs.marks")
end

if settings.lsplens then
	reload("lua.user.configs.lsplens")
end

if settings.oil then
	reload("lua.user.configs.oil")
end
