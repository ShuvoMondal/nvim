return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		config = function()
			require("copilot").setup()
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		event = "InsertEnter",
		config = function()
			require("copilot_cmp").setup() -- Setup copilot-cmp
		end,
		dependencies = { "zbirenbaum/copilot.lua" },
	},
}
