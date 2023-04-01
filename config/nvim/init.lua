-- lazy bootstrap start
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
-- lazy bootstrap end

-- lazy requires leader to be set before lazy setup
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

require("user.options")
-- setup lazy start
-- load lua/plugins
require("lazy").setup('plugins')
-- setup lazy end

require("user.mappings")
require("user.everforest")
require("user.highlightedyank")
