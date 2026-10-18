return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sqls = {},
        clangd = {
          enabled = true,
          cmd = {
            "clangd",
            "--background-index",
            -- Este flag le permite a clangd usar los compiladores cruzados de PlatformIO en Linux/Mac
            "--query-driver=~/.platformio/packages/toolchain-*/**/bin/*gcc*",
          },
        },
        ccls = {
          enabled = false,
          cmd = { "ccls" },
          init_options = {
            cache = {
              directory = ".ccls-cache",
            },
          },
        },
        gopls = {
          settings = {
            gopls = {
              -- Fuerza a gopls a enviar placeholders en formato nativo de snippets
              usePlaceholders = true,
            },
          },
        },
      },
    },
  },
}
