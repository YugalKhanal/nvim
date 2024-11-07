return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.nixpkgs_fmt,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.latexindent,
        -- null_ls.builtins.diagnostics.black,
      },
    })
    vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { desc = "Format the code with LSP" })
  end,
}
