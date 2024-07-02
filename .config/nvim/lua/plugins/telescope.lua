return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim",
    },
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

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

        keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
        keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find string in cwd" })
        keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })
        keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
    end,
}
