-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Leader Key Configuration
vim.g.mapleader = " " -- Sets the main leader key for custom mappings
vim.g.sleader = ";" -- Sets a secondary leader key for additional custom mappings

-- Encoding Settings
vim.opt.fileencoding = "utf-8" -- Sets the character encoding used in the file

-- Display and UI
vim.opt.number = true -- Displays line numbers in the left column
vim.opt.relativenumber = true -- Shows line numbers relative to the current cursor position
vim.opt.title = true -- Controls whether the window's title is set to reflect the edited file
vim.opt.wrap = true -- Controls whether lines longer than the width of the window are wrapped
vim.opt.scrolloff = 10 -- Keeps a minimum number of lines above and below the cursor
-- vim.opt.cmdheight = 0 -- Sets the height of the command-line area
-- vim.opt.laststatus = 0 -- Controls when the last window will have a status line
-- vim.opt.showcmd = true -- Shows partial command in the last line of the screen

-- Indentation and Formatting
vim.opt.autoindent = true -- Copies indent from current line when starting a new line
vim.opt.smartindent = true -- Automatically inserts indents in some cases, like for C-like programs
vim.opt.expandtab = true -- Converts tabs to spaces
vim.opt.shiftwidth = 2 -- Sets the number of spaces for each indentation level
vim.opt.tabstop = 2 -- Sets the number of spaces that a tab character represents
vim.opt.smarttab = true -- Makes the tab key insert shiftwidth spaces at line start
vim.opt.breakindent = true -- Preserves indentation in wrapped lines

-- Search and Replace
vim.opt.hlsearch = true -- Highlights all matches of the last search pattern
vim.opt.ignorecase = true -- Makes searches case-insensitive
vim.opt.inccommand = "split" -- Shows effects of substitution commands in real-time

-- File Handling and Backup
-- vim.opt.backup = false -- Controls whether backup files are created
-- vim.opt.path:append({ "**" }) -- Adds recursive subdirectory search to the 'path' option
-- vim.opt.wildignore:append({ "*/node_modules/*" }) -- Specifies patterns to ignore during file name completion

-- Editing Behavior
vim.opt.backspace = { "start", "eol", "indent" } -- Configures how backspace works in insert mode
vim.opt.mouse = "" -- Configures mouse support in Neovim (empty string disables it)

-- Window Splitting
vim.opt.splitbelow = true -- Places new windows below the current one
vim.opt.splitright = true -- Places new windows to the right of the current one
vim.opt.splitkeep = "cursor" -- Determines cursor position after splitting a window

-- Formatting Options
vim.opt.formatoptions:append({ "r" }) -- Configures automatic formatting options
