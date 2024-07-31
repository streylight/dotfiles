vim.cmd [[packadd packer.nvim]]
-- Plugin setup with Packer
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- cmp & lsp
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'

  -- vscode color scheme (best plugin NA)
  use 'Mofiqul/vscode.nvim'
  
  -- misc
  use 'mbbill/undotree'
  use 'nvim-lua/popup.nvim'
  
  -- lsp
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/mason.nvim" -- simple to use language server installer
  use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
  use "williamboman/nvim-lsp-installer" -- installer
  use 'jose-elias-alvarez/null-ls.nvim' -- LSP diagnostics and code actions

  --snippets
  use "L3MON4D3/LuaSnip"
end)

