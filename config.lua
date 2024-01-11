-- Customization
-- =========================================
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.wo.fillchars = "eob: "
lvim.leader = " "
lvim.colorscheme = "tokyonight" -- set to a custom theme
lvim.transparent_window = true
lvim.debug = false
vim.lsp.set_log_level "error"
lvim.log.level = "warn"
require("user.neovim").config()
lvim.lsp.code_lens_refresh = true
lvim.lsp.installer.setup.automatic_installation = true


-- Customization
-- =========================================

-- AI
lvim.builtin.sell_your_soul_to_devil = { active = false, prada = false, openai = false } -- if you want microsoft to abuse your soul
lvim.builtin.tabnine = { active = false } -- change to false if you don't like tabnine
lvim.builtin.codeium = { active = true }


-- Motions
lvim.builtin.motion_provider = "hop" -- change this to use different motion providers ( hop or leap or flash)
lvim.builtin.harpoon = { active = true } -- use the harpoon plugin

-- Remember
lvim.builtin.neoclip = { active = true, enable_persistent_history = true }
lvim.builtin.persistence = { active = true } -- change to false if you don't want persistence
lvim.builtin.lastplace = { active = true } -- change to false if you are jumping to future

-- Debugging
lvim.builtin.dap.active = false -- change this to enable/disable debugging

-- Testing
lvim.builtin.task_runner = "" -- change this to use different task runners ( "async_tasks" or "overseer" or "")
lvim.builtin.test_runner = { active = false, runner = "ultest" } -- change this to enable/disable ultest or neotest

-- UI
lvim.builtin.fancy_wild_menu = { active = true } -- enable/disable cmp-cmdline
lvim.builtin.fancy_diff = { active = true } -- enable/disable fancier git diff
lvim.builtin.fancy_statusline = { active = false } -- enable/disable fancy statusline
lvim.builtin.global_statusline = true -- set true to use global statusline
lvim.builtin.tmux_lualine = false -- use vim-tpipeline to integrate lualine and tmux
lvim.builtin.indentlines.active = false
lvim.builtin.indentlines.mine = false -- NOTE: using v3 till fixed upstream in lunarvim
lvim.builtin.borderless_cmp = false
lvim.builtin.colored_args = false -- if true then sets up hlargs.nvim
lvim.builtin.breadcrumbs.active = false
lvim.builtin.illuminate.active = false
lvim.builtin.dressing = { active = false } -- enable to override vim.ui.input and vim.ui.select with telescope
lvim.builtin.noice = { active = true } -- enables noice.nvim and inc-rename.nvim
lvim.builtin.tree_provider = "neo-tree" -- can be "neo-tree" or "nvimtree" or ""
lvim.builtin.tag_provider = "symbols-outline" -- change this to use different tag providers ( symbols-outline or vista )
lvim.builtin.hlslens = { active = false } -- enable/disable hlslens
lvim.builtin.sidebar = { active = false } -- enable/disable sidebar
lvim.builtin.winbar_provider = "treesitter" -- can be "filename" or "treesitter" or "navic" or ""
lvim.builtin.file_browser = { active = false } -- enable/disable telescope file browser
lvim.builtin.cursorline = { active = true } -- use a bit fancier cursorline
lvim.builtin.custom_web_devicons = false -- install https://github.com/Nguyen-Hoang-Nam/mini-file-icons


-- LSP
lvim.builtin.lsp_lines = false -- enable/disable lsp_lines to display lsp virtual text below instead of behind
lvim.builtin.lspsaga = { active = true }
lvim.builtin.inlay_hints = {active = false}

-- Quality Of Life / Utility
lvim.builtin.legendary = { active = false } -- enable/disable legendary plugin ( ctrl-p command )
lvim.builtin.cmp.cmdline.enable = true
lvim.builtin.sniprun = { active = false } -- enable/disable sniprun
lvim.builtin.refactoring = { active = false } -- enable to use refactoring.nvim code_actions
lvim.builtin.symbols_usage = { active = true } -- enable/disable symbols-usage.nvim
lvim.builtin.nonumber_unfocus = false -- diffrentiate between focused and non focused windows
lvim.builtin.smooth_scroll = "neoscroll" -- for smoth scrolling, can be "cinnamon", "neoscroll" or ""
lvim.builtin.comment_box = {active = true}

-- Lang
lvim.builtin.go_programming = { active = false } -- gopher.nvim + nvim-dap-go
lvim.builtin.python_programming = { active = false } -- swenv.nvim + nvim-dap-python + requirements.txt.vim
lvim.builtin.web_programming = { active = true } -- typescript.nvim + package-info.nvim
lvim.builtin.rust_programming = { active = true } -- rustaceanvim + crates.nvim
lvim.builtin.cpp_programming = { active = false } -- clangd_extensions.nvim + make-tools.nvim
lvim.builtin.sql_integration = { active = false } -- use sql integration
lvim.builtin.lua_dev = { active = true } -- change this to enable/disable folke/lua_dev
lvim.builtin.metals = {
  active = false, -- enable/disable nvim-metals for scala development
  fallbackScalaVersion = "3.2.0-RC3",
  serverVersion = "1.0.1",
  bloopVersion = "1.5.11",
}

-- SSH
lvim.builtin.collaborative_editing = { active = false } -- enable/disable collaborative editing
lvim.builtin.remote_dev = { active = false } -- enable/disable remote development

-- Misc
lvim.builtin.presence = { active = false } -- change to true if you want discord presence
lvim.builtin.cheat = { active = true } -- enable/disable cheat.sh integration
lvim.builtin.bigfile.active = false

--TODO: lspsaga



-- Override Lunarvim defaults
-- =========================================
require("user.builtin").config()

-- StatusLine
-- =========================================
if lvim.builtin.fancy_statusline.active then
require("user.lualine").config()
end

-- Debugging
-- =========================================
if lvim.builtin.dap.active then
  require("user.dap").config()
end

-- Language Specific
-- =========================================
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, {
  "clangd",
  "dockerls",
  "gopls",
  "golangci_lint_ls",
  "jdtls",
  "pyright",
  "rust_analyzer",
  "taplo",
  "texlab",
  "tsserver",
  "yamlls",
})
require("user.null_ls").config()

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Autocommands
-- =========================================
require("user.autocommands").config()

-- Additional Keybindings
-- =========================================
require("user.keybinds").config()

