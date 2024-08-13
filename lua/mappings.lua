require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "j", "gjzz")
map("n", "k", "gkzz")
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>W", ":w!<CR>")
map("n", "<leader>Q", ":q!<CR>")

-- open a terminalwindow vertically and use the command "ollama run llam3" and insert 
map("n", "<leader>ll", ":vsplit | terminal ollama run llama3<CR>i")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
