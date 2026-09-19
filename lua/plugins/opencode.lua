return {
  {
    "nickjvandyke/opencode.nvim",
    version = "*",
    config = function()
      ---@type opencode.Opts
      vim.g.opencode_opts = {
        server = {
          start = function()
            require("snacks.terminal").open("opencode --port", {
              win = { position = "right", enter = false },
            })
          end,
        },
      }
    end,
    keys = {
      { "<leader>oa", function() require("opencode").ask("@this: ") end, desc = "Ask OpenCode" },
      { "<leader>os", function() require("opencode").select() end, desc = "Select OpenCode" },
      {
        "go",
        function() return require("opencode").operator("@this ") end,
        desc = "Append range to OpenCode",
        expr = true,
        mode = { "n", "x" },
      },
      {
        "goo",
        function() return require("opencode").operator("@this ") .. "_" end,
        desc = "Append line to OpenCode",
        expr = true,
        mode = "n",
      },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_z, { require("opencode").statusline })
    end,
  },
}
