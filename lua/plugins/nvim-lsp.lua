return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- Ensure mason.nvim is set up
      require("mason").setup()

      -- Ensure mason-lspconfig.nvim is set up
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright" }, -- Automatically install Pyright
      })

      -- Setup lspconfig for Pyright
      local lspconfig = require("lspconfig")
      lspconfig.pyright.setup({
        on_attach = function(client, bufnr)
          -- Key mappings for LSP
          local bufopts = { noremap = true, silent = true, buffer = bufnr }
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
        end,
      })
    end,
  },


}
