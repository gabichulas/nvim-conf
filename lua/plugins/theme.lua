return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      contrast = "hard",
      transparent_mode = false,
    },
  },

  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
  },
  {
    "gabichulas/athanor-nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
      "nvim-mini/mini.base16",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
