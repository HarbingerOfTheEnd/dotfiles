return {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(opts)
        require("crates").setup(opts)
        require("crates").show()
    end,
}
