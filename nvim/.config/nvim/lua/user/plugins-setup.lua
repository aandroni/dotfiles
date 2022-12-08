local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system {
      "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path,
    }
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Plugins
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- Have packer manage itself

  -- popup and plenary are required by many other plugins
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

  -- window management
  -- use "christoomey/vim-tmux-navigator"
  use "szw/vim-maximizer"

  -- file explorer
  use "nvim-tree/nvim-tree.lua"
  use "kyazdani42/nvim-web-devicons"

  -- Essential plugins
  use "tpope/vim-surround"
  use "numToStr/Comment.nvim"

  -- Colorschemes
  use "folke/tokyonight.nvim"
  use "gruvbox-community/gruvbox"
  use "arcticicestudio/nord-vim"

  -- Statusline
  use "nvim-lualine/lualine.nvim"

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp" -- LSP
  use "hrsh7th/cmp-nvim-lua" -- Neovim API

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use { "glepnir/lspsaga.nvim", branch = "main" }
  use "onsails/lspkind.nvim"

  -- formatting and linting
  use "jose-elias-alvarez/null-ls.nvim"
  use "jayp0521/mason-null-ls.nvim"

  -- Telescope
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  use { "nvim-telescope/telescope.nvim", branch = "0.1.x" }

  -- Treesitter (run update automatically after install)
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Clojure
  use "tpope/vim-dispatch"
  use "clojure-vim/vim-jack-in"
  -- use "tpope/vim-fireplace"
  use "Olical/conjure"

  -- Send text to screen/tmux/kitty
  use "jpalardy/vim-slime" -- works but cannot send to qtconsole
  use "mtikekar/nvim-send-to-term" -- works with qt console (but a little weird)
  use "HiPhish/repl.nvim" -- Cannot send lines
  use "bfredl/nvim-ipy" -- Doesn't work with qtconsole
  use "hkupty/iron.nvim"

  -- Go
  use "fatih/vim-go"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require("packer").sync()
  end
end)

