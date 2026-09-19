return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        win = {
          input = {
            keys = {
              ["<a-o>"] = { "opencode_send", mode = { "n", "i" } },
            },
          },
        },
        actions = {
          opencode_send = function(picker) ---@param picker snacks.Picker
            local items = vim.tbl_map(function(item) ---@param item snacks.picker.Item
              return item.file
                  and require("opencode").format({ path = item.file, from = item.pos, to = item.end_pos })
                or item.text
            end, picker:selected({ fallback = true }))

            require("opencode").prompt(table.concat(items, ", ") .. " ")
          end,
        },
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
