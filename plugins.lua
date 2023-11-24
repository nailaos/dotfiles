return {
  {
    "LintaoAmons/easy-commands.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "tokyonight.nvim",
    style = "night",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true,
      integrations = {
        telescope = true,
        harpoon = true,
        mason = true,
        neotest = true,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "p00f/nvim-ts-rainbow" },
    opts = function(_, opts)
      opts.rainbow = {
        enable = true,
        disable = { "jsx" },
        extended_mode = true,
        -- query = "rainbow-parens",
        -- strategy = require("ts-rainbow").strategy.global,
      }
    end,
  },
}
