return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,  -- Make sure it loads before other plugins that depend on color schemes
    config = function()
      -- Optional: pass any Catppuccin-specific configuration here
      require("catppuccin").setup({
        flavor = "mocha",  -- latte, frappe, macchiato, mocha
        transparent_background = false,
        integrations = {
          treesitter = true,
          nvimtree = true,
          -- ... more integrations
        },
      })

      -- Finally, load the colorscheme
      vim.cmd([[colorscheme catppuccin]])
    end,
  },
}

