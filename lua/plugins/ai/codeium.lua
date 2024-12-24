return {
	{
		"Exafunction/codeium.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim", -- Required for functionality
			"hrsh7th/nvim-cmp", -- Completion plugin
		},
		config = function()
			require("codeium").setup({
				-- Add any specific configuration options here
			})
		end,
	},
}
