return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")

        telescope.setup({
            defaults = {
                path_display = { "smart" },
                file_ignore_patterns = {
                    ".git/",
                    "node_modules/",
                    "vendor/",
                    ".venv/",
                    "venv/",
                    "zig-out/",
                    ".zig-cache/",
                },
            },
            pickers = {
                find_files = {
                    hidden = true,
                },
                oldfiles = {
                    hidden = true,
                },
                live_grep = {
                    hidden = true,
                },
                grep_string = {
                    hidden = true,
                },
            },
        })

        telescope.load_extension("fzf")

        local keymap = vim.keymap

        keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>fr", telescope.oldfiles, { desc = "Fuzzy find recent files" })
        keymap.set("n", "<leader>fs", telescope.live_grep, { desc = "Find string in cwd" })
        keymap.set("n", "<leader>fc", telescope.grep_string, { desc = "Find string under cursor in cwd" })
    end,
}
