local settings = reload "lua.user.settings"
lvim.plugins = {
  {
    "crusj/bookmarks.nvim",
    dependencies = { "nvim-web-devicons" },
    enabled = settings.bookmarks,
  },
  {
    "NvChad/nvim-colorizer.lua",
    enabled = settings.colorizer
  }
}


reload "lua.user.configs.init"
