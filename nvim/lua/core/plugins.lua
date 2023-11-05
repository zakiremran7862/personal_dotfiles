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

local plugins = {
  "folke/tokyonight.nvim",
  "nvim-tree/nvim-web-devicons",
  "neovim/nvim-lspconfig",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "saadparwaiz1/cmp_luasnip",
  "L3MON4D3/LuaSnip",
  "lukas-reineke/indent-blankline.nvim",
  "nvim-tree/nvim-tree.lua",
  "NvChad/nvim-colorizer.lua",
  "nvim-lualine/lualine.nvim",
  "akinsho/bufferline.nvim",
  "m4xshen/autoclose.nvim",
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
      {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
  "rebelot/kanagawa.nvim",
  { "EdenEast/nightfox.nvim" }
}

require("lazy").setup(plugins, opts)
