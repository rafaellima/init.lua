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

-- set leader key to space
vim.g.mapleader = " "

require("lazy").setup("plugins")

require("rafael.core.options")
require("rafael.core.keymaps")
require("rafael.plugins.comment")
require("rafael.plugins.lualine")
require("rafael.plugins.nvim-cmp")
require("rafael.plugins.autopairs")
require("rafael.plugins.treesitter")
require("rafael.plugins.gitsigns")
require("rafael.plugins.harpoon")
require("rafael.plugins.neotest")
require("rafael.plugins.mini-surround")
require("rafael.plugins.neogit")
