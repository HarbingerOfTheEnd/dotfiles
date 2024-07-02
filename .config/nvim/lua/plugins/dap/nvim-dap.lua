return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap")

        dap.adapters["pwa-node"] = {
            type = "server",
            host = "127.0.0.1",
            port = 8123,
            executable = {
                command = "js-debug-adapter",
            },
        }

        for _, lang in ipairs({ "typescript", "javascript" }) do
            dap.configurations[lang] = {
                {
                    type = "pwa-node",
                    request = "launch",
                    name = "Launch file",
                    program = "${file}",
                    cwd = "${workspaceFolder}",
                    runtimeExecutable = "node",
                },
            }
        end

        vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle a breakpoint" })
        vim.keymap.set("n", "<leader>dr", dap.continue, { desc = "Toggle a breakpoint" })
    end,
}
