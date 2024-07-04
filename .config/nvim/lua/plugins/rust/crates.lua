return {
	"Saecki/crates.nvim",
	ft = { "rust", "toml" },
	config = function()
		require("crates").setup({
			lsp = {
				enabled = true,
				actions = true,
				completion = true,
				hover = true,
			},
			completion = {
				crates = {
					enabled = true,
				},
				cmp = {
					enabled = true,
				},
			},
		})
		require("crates").show()
	end,
}
