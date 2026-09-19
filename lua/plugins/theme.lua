return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false, -- Load immediately during startup
    priority = 1000, -- Ensure it loads before other plugins
    opts = {
      theme = "dragon",
      background = {
        dark = "dragon",
        light = "lotus",
      },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
