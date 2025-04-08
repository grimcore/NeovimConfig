-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "n", "v" }, "j", "gjzz")
map({ "n", "v" }, "k", "gkzz")
map("i", "<c-h>", "<left>")
map("i", "<c-j>", "<down>")
map("i", "<c-k>", "<up>")
map("i", "<c-l>", "<right>")
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")

-- save and quit
map({ "n", "v" }, "<leader>q", ":q<CR>")
map({ "n", "v" }, "<leader>qa", ":qa<CR>")
map({ "n", "v" }, "<leader>wq", ":wq<CR>")
map({ "n", "v" }, "<leader>w", ":w<CR>")
map({ "n", "v" }, "<leader>W", ":w!<CR>")
map({ "n", "v" }, "<leader>Q", ":q!<CR>")

-- pick color theme with telescope implementation using something like telescope.nvim
map(
  "n",
  "<leader>th",
  "<cmd>lua require('telescope.builtin').colorscheme({enable_preview=true})<cr>",
  { noremap = true, silent = true }
)
