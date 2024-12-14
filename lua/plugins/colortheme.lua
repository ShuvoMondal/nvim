return {
	"catppuccin/nvim",
	lazy = false,
	priority = 1000,
	bg_transparent = true,

	config = function()
		local bg_transparent = true -- Ensure this is local to avoid conflicts

		-- Function to reload Catppuccin with updated settings
		local function reload_colorscheme()
			require("catppuccin").setup({
				flavour = "auto", -- latte, frappe, macchiato, mocha
				background = {
					light = "latte",
					dark = "mocha",
				},
				transparent_background = bg_transparent,
				show_end_of_buffer = false,
				term_colors = false,
				dim_inactive = {
					enabled = false,
					shade = "dark",
					percentage = 0.15,
				},
				no_italic = false,
				no_bold = false,
				no_underline = false,
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
				},
				color_overrides = {},
				custom_highlights = {},
				default_integrations = true,
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = false,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
				},
			})

			vim.cmd.colorscheme("catppuccin")
		end

		-- Initial load
		reload_colorscheme()

		-- Toggle background transparency
		local function toggle_transparency()
			bg_transparent = not bg_transparent
			reload_colorscheme()
		end

		vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
	end,
}

