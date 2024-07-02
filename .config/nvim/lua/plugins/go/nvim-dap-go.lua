return {
    "leoluz/nvim-dap-go",
    ft = "go",
    config = function(opts)
        local dap_go = require("dap-go")

        dap_go.setup(opts)

        vim.keymap.set("n", "<leader>dgt", dap_go.debug_test, { desc = "Debug go test" })
        vim.keymap.set("n", "<leader>dgl", dap_go.last, { desc = "Debug last go test" })
    end,
}
