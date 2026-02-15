vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Side numbers
opt.relativenumber = true
opt.number = true

-- Tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- cipy indent from current line when starting new one

-- Text
opt.wrap = false

-- Search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- :h smartcase

-- Cursor
opt.cursorline = true -- highlight cursor line

-- Colors
opt.termguicolors = true
opt.background = "dark" -- it tells Nvim what the "inherited" (terminal/GUI) background looks like
opt.signcolumn = "yes" -- :h signcolumn

-- Backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- Clipboard
opt.clipboard:append("unnamedplus") -- use system default clipboard as default register

-- Split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- Remove fillchars
opt.fillchars:append({ eob = " " })
