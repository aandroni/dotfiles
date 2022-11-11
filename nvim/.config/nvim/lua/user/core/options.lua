local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = false

-- appearance
opt.termguicolors = true
-- opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- Use system clipboard when copy/pasting

-- split windows
opt.splitright = true
opt.splitbelow = true

-- dash
opt.iskeyword:append("-") -- To have dash separated words considered as one word

-- completion
opt.completeopt = { "menu", "menuone", "noselect" }

-- encoding
opt.fileencoding = "utf-8"

-- allow to use mouse
opt.mouse = "a"
