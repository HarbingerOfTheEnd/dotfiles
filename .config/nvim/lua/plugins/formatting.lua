return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                nix = { "nixfmt" },
                nixpkgs = { "nixpkgs_fmt" },
                javascript = { "biome", "biome-check", "biome-organize-imports" },
                javascriptreact = { "biome", "biome-check", "biome-organize-imports" },
                typescript = { "biome", "biome-check", "biome-organize-imports" },
                typescriptreact = { "biome", "biome-check", "biome-organize-imports" },
                html = { "biome", "biome-check", "biome-organize-imports" },
                svelte = { "biome", "biome-check", "biome-organize-imports" },
                css = { "biome" },
                scss = { "biome" },
                c = { "clang-format" },
                cpp = { "clang-format" },
                proto = { "buf" },
                cmake = { "cmake_format" },
                crystal = { "crystal" },
                c_sharp = { "csharpier" },
                dart = { "dart_format" },
                erl = { "efmt" },
                gleam = { "gleam" },
                go = { { "gofmt", "gofumpt" }, "goimports-reviser", "golines" },
                java = { "google-java-format" },
                haskell = { "hindent" },
                kotlin = { "ktfmt" },
                lua = { "stylua" },
                markdown = { "markdownfmt", "markdownlint" },
                elixir = { "mix" },
                nginx = { "nginxfmt" },
                nim = { "nimpretty" },
                ocaml = { "ocamlformat", "ocp-indent" },
                ruby = { "rubyfmt" },
                python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
                rust = { "rustfmt" },
                xml = { "xmlformatter", "xmllint" },
                yaml = { "yamlfmt" },
                zig = { "zigfmt" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
