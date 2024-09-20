return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  event = "VeryLazy",
  config = function ()
    require('bufferline').setup {
      options = {
        numbers = "ordinal",
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          return "("..count..")"
        end,
        show_buffer_close_icons = false,
        show_close_icon = true,
        show_tab_indicators = true,
        separator_style = "thick",
        always_show_bufferline = true,
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "center"
          },
       }
      }
    }

    vim.keymap.set('n', '<Tab>', '<cmd>BufferLineCycleNext<CR>', {desc = 'Next buffer'})
    vim.keymap.set('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<CR>', {desc = 'Previous buffer'})
    vim.keymap.set('n', '<leader>x', '<cmd>BufferLinePickClose<CR>', {desc = 'Close buffer'})
  end,
}
