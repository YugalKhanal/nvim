return {
	"folke/tokyonight.nvim",
  name = "tokyonight-night",
	priority = 1000,
  -- event = "VeryLazy",
  config = function()
    vim.cmd.colorscheme("tokyonight")
  end,
	-- opts = {},
}
