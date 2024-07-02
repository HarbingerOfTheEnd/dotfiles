return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            ensure_installed = {
                "tsserver",
                "html",
                "cssls",
                "tailwindcss",
                "svelte",
                "lua_ls",
                "graphql",
                "emmet_ls",
                "prismals",
                "pyright",
                "rust_analyzer",
                "zls",
                "gopls",
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "biome",
                "golines",
                "stylua",
                "js-debug-adapter",
                "ruff",
                "goimports-reviser",
                "eslint-lsp",
            },
        })
    end,
}
