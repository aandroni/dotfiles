local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--Remap space as leader key
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Plugins
require('lazy').setup({
  -- popup and plenary are required by many other plugins
  "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
  "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins

  -- window management
  -- use "christoomey/vim-tmux-navigator"
  "szw/vim-maximizer",

  -- file explorer
  "nvim-tree/nvim-tree.lua",
  "kyazdani42/nvim-web-devicons",

  -- Essential plugins
  "tpope/vim-surround",
  "numToStr/Comment.nvim",

  -- Colorschemes
  "folke/tokyonight.nvim",
  "gruvbox-community/gruvbox",
  "arcticicestudio/nord-vim",
  { "catppuccin/nvim", name = "catppuccin" },

  -- Statusline
  "nvim-lualine/lualine.nvim",

  -- cmp plugins
  "hrsh7th/nvim-cmp", -- The completion plugin
  "hrsh7th/cmp-buffer", -- buffer completions
  "hrsh7th/cmp-path", -- path completions
  "hrsh7th/cmp-cmdline", -- cmdline completions
  "saadparwaiz1/cmp_luasnip", -- snippet completions
  "hrsh7th/cmp-nvim-lsp", -- LSP
  "hrsh7th/cmp-nvim-lua", -- Neovim API

  -- snippets
  "L3MON4D3/LuaSnip", --snippet engine
  "rafamadriz/friendly-snippets", -- a bunch of snippets to use

  -- LSP
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  { "glepnir/lspsaga.nvim", branch = "main" },
  "onsails/lspkind.nvim",

  -- formatting and linting
  "jose-elias-alvarez/null-ls.nvim",
  "jayp0521/mason-null-ls.nvim",

  -- Telescope
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  { "nvim-telescope/telescope.nvim", branch = "0.1.x" },

  -- Treesitter (run update automatically after install)
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Git
  "lewis6991/gitsigns.nvim",

  -- Clojure
  "tpope/vim-dispatch",
  "clojure-vim/vim-jack-in",
  -- "tpope/vim-fireplace",
  "Olical/conjure",

  -- Send text to screen/tmux/kitty
  "jpalardy/vim-slime", -- works but cannot send to qtconsole
  "mtikekar/nvim-send-to-term", -- works with qt console (but a little weird)
  "HiPhish/repl.nvim", -- Cannot send lines
  "bfredl/nvim-ipy", -- Doesn't work with qtconsole
  "hkupty/iron.nvim",

  -- Go
  "fatih/vim-go",
})

