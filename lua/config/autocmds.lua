-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("FileType", {
  pattern = "sql",
  callback = function()
    vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Left>", { buffer = true })
    vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Right>", { buffer = true })
    vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Up>", { buffer = true })
    vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Down>", { buffer = true })
    vim.b.autoformat = false
  end,
})
