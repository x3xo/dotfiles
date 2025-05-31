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
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


local opts = {
    change_detection = {
    -- automatically check for config file changes and reload the ui
    enabled = true,
    notify = false, -- get a notification when changes are found
  },
}

require("user.options")
require("lazy").setup('plugins', opts)
-- setup lazy end

require("user.mappings")
require("user.highlightedyank")
require("user.colorscheme")
require("user.statusline")
