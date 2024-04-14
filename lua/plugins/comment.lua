return {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
      -- vim.keymap.set('n', '<leader>/', function() require("Comment.api").toggle.linewise.current() end, "Toggle Comment")
    end
}
