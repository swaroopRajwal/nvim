return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      cssls = {}, -- css-lsp
      cssmodules_ls = {}, -- cssmodules-language-server
    },
  },
}
