return {
	{
		"jackMort/ChatGPT.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		event = "VeryLazy", -- Load the plugin lazily on demand
		config = function()
			-- Dynamically fetch the API key from the environment
			local api_key = os.getenv("OPENAI_API_KEY")
			if not api_key or api_key == "" then
				vim.notify(
					"OpenAI API key not found. Please set OPENAI_API_KEY in your environment.",
					vim.log.levels.ERROR
				)
				return
			end

			require("chatgpt").setup({
				api_key = api_key,
			})

			-- Keymap configuration
			local opts = { noremap = true, silent = true, desc = "ChatGPT" }
			vim.api.nvim_set_keymap("n", "<leader>cg", "<cmd>ChatGPT<CR>", opts) -- Open ChatGPT
			vim.api.nvim_set_keymap("v", "<leader>ce", "<cmd>ChatGPTEditWithInstructions<CR>", opts) -- Edit with instructions
			vim.api.nvim_set_keymap("n", "<leader>ca", "<cmd>ChatGPTActAs<CR>", opts) -- Act As menu
		end,
	},
}
