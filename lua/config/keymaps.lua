-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- enter visual mode with jk kj JK KJ
vim.keymap.set({ "i" }, "jk", "<ESC>", { silent = true, noremap = true })
vim.keymap.set({ "i" }, "kj", "<ESC>", { silent = true, noremap = true })

-- cursor is always centered with jzz kzz in visual normal and insert mode
vim.keymap.set({ "n", "v" }, "j", "jzz", { silent = true, noremap = true })
vim.keymap.set({ "n", "v" }, "k", "kzz", { silent = true, noremap = true })
