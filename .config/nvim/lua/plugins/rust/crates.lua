return {
	"Saecki/crates.nvim",
	ft = { "rust", "toml" },
	config = function()
		require("crates").setup({
			completion = {
				crates = {
					enabled = true,
				},
			},
		})
		require("crates").show()
	end,
}
