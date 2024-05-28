require "mbarnesdev.config.globals"
require "mbarnesdev.config.options"
require "mbarnesdev.config.keymaps"
require "mbarnesdev.config.autocmds"

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

local plugins_dir = "mbarnesdev.plugins"
local lazy_config = {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
}

vim.filetype.add {
  pattern = {
    [".*%blade%.php"] = "blade",
  },
}

require("lazy").setup({ import = plugins_dir }, lazy_config)
