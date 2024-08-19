require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "j", "gjzz")
map("n", "k", "gkzz")
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")

map("n", "<leader>xa", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close all buffers" })


-- save and quit
map({"n", "v", "t"}, "<leader>q", ":q<CR>")
map({"n", "v", "t"}, "<leader>qa", ":qa<CR>")
map({"n", "v"}, "<leader>wq", ":wq<CR>")
map({"n", "v"}, "<leader>w", ":w<CR>")
map({"n", "v"}, "<leader>W", ":w!<CR>")
map({"n", "v"}, "<leader>Q", ":q!<CR>")

map({ "n", "i", "v", "t" }, "<C-`>", function()
  require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })

-- open a terminalwindow vertically and use the command "ollama run llam3" and insert 
map("n", "<leader>ll", ":vsplit | terminal ollama run llama3<CR>i")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- floating terminal 
map({ "n", "t" }, "<leader>i", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm", border="rounded" }
end, { desc = "Terminal Toggle Floating term" })

