return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = {
            hidden = true,
            ignored = true,
            exclude = {
              ".git",
              ".DS_Store",
              "node_modules",
              "dist",
              "build",
              ".turbo",
              "dist-ssr",
              ".nitro",
              ".tanstack",
              ".vinxi",
              ".wrangler",
              ".output",
            },
          },
          grep = {
            hidden = true,
            ignored = true,
            exclude = {
              ".git",
              ".DS_Store",
              "node_modules",
              "dist",
              "build",
              ".turbo",
              "dist-ssr",
              ".nitro",
              ".tanstack",
              ".vinxi",
              ".wrangler",
              ".output",
            },
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
