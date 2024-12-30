-- lua/plugins/pipeline.lua (or wherever you manage your lazy plugins)
return {
  {
    "topaxi/pipeline.nvim",
    event = "BufReadPre",         -- or another event you prefer
    dependencies = {
      "nvim-lua/plenary.nvim",    -- required dependency
      "rcarriga/nvim-notify",     -- optional, but recommended
    },
    config = function()
      require("pipeline").setup({
        -- Your config here (below is an example):
        stage_width = 80,
        spinner = {
          "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏",
        },
      })
    end,
  },
}
