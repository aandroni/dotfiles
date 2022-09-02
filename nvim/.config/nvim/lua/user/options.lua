local options = {
  backup = false,                          -- no backup file
  clipboard = "unnamedplus",
  cmdheight = 1,                           -- default value is 1
  completeopt = { "menuone", "noselect" },
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- max number of items in popup menu
  showmode = true,
  showtabline = 2,                         -- always show tabs
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,                        -- use swap file for the buffer
  termguicolors = true,
  timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in ms)
  undofile = true,
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- spaces that a tab counts for (deault is 8)
  cursorline = false,
  number = true,
  relativenumber = true,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 8,                           -- min number of screen lines to keep above and below cursor
  sidescrolloff = 8,
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- NOTE: With vim.cmd you can execute vimscript commands
-- vim.cmd "set whichwrap+=<,>,[,],h,l"
-- vim.cmd [[set iskeyword+=-]]

