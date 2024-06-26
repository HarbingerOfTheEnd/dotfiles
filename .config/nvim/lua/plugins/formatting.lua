return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                c = { "clang-format" },
                cpp = { "clang-format" },
                javascript = { { "biomejs", "prettier" } },
                typescript = { { "biomejs", "prettier" } },
                javascriptreact = { { "biomejs", "prettier" } },
                typescriptreact = { { "biomejs", "prettier" } },
                svelte = { { "biomejs", "prettier" } },
                css = { { "biomejs", "prettier" } },
                html = { { "biomejs", "prettier" } },
                json = { { "biomejs", "prettier" } },
                yaml = { { "biomejs", "prettier" } },
                markdown = { { "biomejs", "prettier" } },
                graphql = { { "biomejs", "prettier" } },
                liquid = { { "biomejs", "prettier" } },
                lua = { "stylua" },
                go = { "gofumpt", "goimports-reviser", "golines" },
                python = function(bufnr)
                    if require("conform").get_formatter_info("ruff_format", bufnr).available then
                        return { "ruff_format", "ruff_fix", "ruff_organize_imports" }
                    else
                        return { "isort", "black" }
                    end
                end,
            },
            format_on_save = {
                ls_format = "fallback",
                async = false,
                timeout_ms = 1000,
            },
            formatters = {
                ["clang-format"] = {
                    args = { "-style={BasedOnStyle: Google, IndentWidth: 4}" },
                },
                ["goimports-reviser"] = {
                    prepend_args = { "-rm-unused" },
                },
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
