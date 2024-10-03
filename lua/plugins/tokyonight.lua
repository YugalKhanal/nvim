return {
<<<<<<< HEAD
	"folke/tokyonight.nvim",
  name = "tokyonight-night",
	priority = 1000,
  -- event = "VeryLazy",
  config = function()
    vim.cmd.colorscheme("tokyonight")
  end,
=======
	{
		"nvchad/ui",
		config = function()
			require("nvchad")
		end,
	},

	{
		"nvchad/base46",
		lazy = true,
		build = function()
			require("base64").load_all_highlights()
		end,
	},

	-- "folke/tokyonight.nvim",
	--  name = "tokyonight-night",
	-- priority = 1000,
	--  config = function()
	--    vim.cmd.colorscheme("tokyonight")
	--  end,
>>>>>>> 235ac9c (added nvchad base46)
	-- opts = {},
}
