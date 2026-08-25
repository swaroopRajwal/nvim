return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true, -- Show hidden files (like .env and .gitignore)
            ignored = true, -- Show gitignored files
            exclude = { ".git", ".DS_Store" }, -- Specifically hide these
          },
        },
      },
    },
  },
}
