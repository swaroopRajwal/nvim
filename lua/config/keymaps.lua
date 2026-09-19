-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle the OpenCode TUI
vim.keymap.set({ "n", "t" }, "<leader>ot", function()
  require("snacks.terminal").toggle("opencode --port", {
    win = { position = "right", enter = false },
  })
end, { desc = "Toggle OpenCode" })
