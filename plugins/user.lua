return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "mattdf/vim-yul",
    ft = "yul",
    -- event = "BufEnter *.yul",
  },
  -- {
  --   "alexghergh/nvim-tmux-navigation",
  --   lazy = false,
  --   opts = {
  --     disable_when_zoomed = true,
  --     keybindings = {
  --       left = "<C-h>",
  --       down = "<C-j>",
  --       up = "<C-k>",
  --       right = "<C-l>",
  --     },
  --   },
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- event = { "BufReadPost", "BufNewFile" },
    layz = false,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    "baliestri/aura-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      vim.cmd [[colorscheme aura-dark]]
    end,
  },
}
