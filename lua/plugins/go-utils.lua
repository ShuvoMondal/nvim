return {
	-- {
	-- 	"olexsmir/gopher.nvim",
	-- 	ft = "go",
	-- 	-- branch = "develop", -- if you want develop branch
	-- 	-- keep in mind, it might break everything
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-treesitter/nvim-treesitter",
	-- 	},
	-- 	config = function()
	-- 		require("gopher").setup()
	-- 		vim.keymap.set({ "n", "v" }, "<leader>gaj", "<cmd>GoTagAdd json<CR>", { noremap = true, silent = true })
	-- 		vim.keymap.set({ "n", "v" }, "<leader>gay", "<cmd>GoTagAdd yaml<CR>", { noremap = true, silent = true })
	-- 	end,
	--
	-- 	build = function()
	-- 		vim.cmd([[silent! GoInstallDeps]])
	-- 	end,
	-- },

	{
		"ray-x/go.nvim",
		ft = { "go", "gomod" },
		dependencies = { "ray-x/guihua.lua" },
		config = function()
			require("go").setup()
		end,
	},
}
