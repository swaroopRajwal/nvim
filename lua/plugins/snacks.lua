return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = {
            hidden = true,
            ignored = true,
            exclude = { ".git", ".DS_Store", "node_modules", "dist", "build" },
          },
          grep = {
            hidden = true,
            ignored = true,
            exclude = { ".git", ".DS_Store", "node_modules", "dist", "build" },
          },
          explorer = {
            hidden = true,
            ignored = true,
            exclude = { ".git", ".DS_Store" },
          },
        },
      },
    },
  },
}
