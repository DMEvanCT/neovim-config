-- ~/.config/nvim/lua/plugins/init.lua
return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- Telescope File Browser Plugin
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },

  -- Copilot Chat Plugin
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim" }, -- for curl, log, and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- Add your CopilotChat-specific options here
    },
  },
}
