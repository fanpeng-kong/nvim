return {
  {
    { "mason-org/mason.nvim", version = "1.11.0" },
    { "mason-org/mason-lspconfig.nvim", version = "1.32.0" },
    "neovim/nvim-lspconfig",

    opts = {
      servers = {
        tsserver = {},
        pyright = {},
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        },
      },
    },
  },
}
