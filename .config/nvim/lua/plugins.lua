--- @return boolean
local function ensure_packer()
   local fn = vim.fn
   local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

   if fn.empty(fn.glob(install_path)) then
      fn.system {
         "git",
         "clone",
         "--depth",
         "1",
         "https://github.com/wbthomason/packer.nvim",
         install_path,
      }
      return true
   end
   return false
end

local packer_bootstrap = ensure_packer()
vim.cmd [[packadd packer.nvim]]

local packer = require("packer")

return packer.startup(function(use)
   -- Packer.nvim can manage itself
   use "wbthomason/packer.nvim"

   use "nvim-lua/plenary.nvim"

   use "github/copilot.vim"

   use "Shatur/ayu-vim"

   if packer_bootstrap then
      packer.sync()
   end
end)
