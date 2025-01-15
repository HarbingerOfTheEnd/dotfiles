return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

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
                "angularls",
                "asm_lsp",
                "astro",
                "bashls",
                "omnisharp",
                "clangd",
                "cmake",
                "crystalline",
                "css_variables",
                "cssls",
                "tailwindcss",
                "ast_grep",
                "jinja_lsp",
                "docker_compose_language_service",
                "dockerls",
                "elixirls",
                "emmet_ls",
                "erlangls",
                "gopls",
                "graphql",
                "hls",
                "html",
                "htmx",
                "jdtls",
                "biome",
                "denols",
                "jsonls",
                -- "julials",
                "kotlin_language_server",
                "lua_ls",
                "luau_lsp",
                "markdown_oxide",
                "nginx_language_server",
                "nimls",
                "nil_ls",
                -- "ocamllsp",
                -- "perlnavigator",
                "prismals",
                "bufls",
                "ruff",
                "r_language_server",
                "rubocop",
                "rust_analyzer",
                "sqls",
                "svelte",
                "grammarly",
                "vimls",
                "volar",
                "lemminx",
                "yamlls",
                "zls",
                "typo_lsp",
            },
        })
    end,
}
