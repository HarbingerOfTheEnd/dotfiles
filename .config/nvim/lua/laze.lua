local loop = vim.loop
local fn = vim.fn

---@param lazypath string
local function ensure_lazy_installed(lazypath)
    if not loop.fs_stat(lazypath) then
        fn.system({
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable",
            lazypath,
        })
    end

    vim.opt.rtp:prepend(lazypath)
end

ensure_lazy_installed(fn.stdpath("data") .. "/lazy/lazy.nvim")

require("lazy").setup({ { import = "plugins" }, { import = "plugins.lsp" } }, {
    checker = {
        enabled = true,
        notify = false,
    },
    change_detection = {
        notify = false,
    },
})
