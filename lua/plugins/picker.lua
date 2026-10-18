-- ~/.config/nvim/lua/plugins/picker.lua
return {
  -- Force disable the snacks picker module to prevent shell crashes
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        ignored = true,
        exclude = { ".git" },
      },
    },
  },
}
