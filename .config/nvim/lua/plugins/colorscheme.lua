return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavor = "mocha",
            transparent_background = true,
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                lsp_trouble = true,
                telescope = {
                    enabled = true,
                },
                markdown = true,
                render_markdown = true,
                which_key = true,
                rainbow_delimiters = true,
                nvim_surround = true,
            },
        })
        vim.cmd.colorscheme "catppuccin"
    end,
}
