-- return {
--   {
--     "williamboman/mason.nvim",
--     lazy = false,
--     config = function()
--       require("mason").setup()
--     end,
--   },
--   {
--     "williamboman/mason-lspconfig.nvim",
--     lazy = false,
--     opts = {
--       auto_install = true,
--     },
--   },
--   {
--     "neovim/nvim-lspconfig",
--     lazy = false,
--     opts = {
--       auto_install = true,
--     },
--     config = function()
--       local capabilities = require("cmp_nvim_lsp").default_capabilities()
--
--       local lspconfig = require("lspconfig")
--       lspconfig.tsserver.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.html.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.lua_ls.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.pyright.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.asm_lsp.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.gopls.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.ruff.setup({
--         capabilities = capabilities,
--       })
--
--
--       vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover information" })
--       vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
--       vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Find references" })
--       vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions when hovering on a W/E" })
--     end,
--   },
-- }

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
      ensure_installed = {
        "tsserver",
        "html",
        "lua_ls",
        "pyright",
        "asm_lsp",
        "gopls",
        "ruff",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      lspconfig.asm_lsp.setup({
        capabilities = capabilities,
      })
      lspconfig.gopls.setup({
        capabilities = capabilities,
      })
      lspconfig.ruff.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover information" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Find references" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions when hovering on a W/E" })
    end,
  },
}
