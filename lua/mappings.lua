require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map({"n", "v"}, "j", "gjzz")
map({"n", "v"}, "k", "gkzz")
map("i", "<c-h>", "<left>")
map("i", "<c-j>", "<down>")
map("i", "<c-k>", "<up>")
map("i", "<c-l>", "<right>")
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")

map("n", "<leader>xa", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close all buffers" })


-- save and quit
map({"n", "v"}, "<leader>q", ":q<CR>")
map({"n", "v"}, "<leader>qa", ":qa<CR>")
map({"n", "v"}, "<leader>wq", ":wq<CR>")
map({"n", "v"}, "<leader>w", ":w<CR>")
map({"n", "v"}, "<leader>W", ":w!<CR>")
map({"n", "v"}, "<leader>Q", ":q!<CR>")

map({ "n", "i", "v", "t" }, "<C-`>", function()
  require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })

-- -- open a terminalwindow vertically and use the command "ollama run llam3" and insert 
-- map("n", "<leader>ll", ":terminal ollama run llama3<CR>i")
-- map("n", "<leader>llh", ":split | terminal ollama run llama3<CR>i")
-- map("n", "<leader>llv", ":vsplit | terminal ollama run llama3<CR>i")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- toggle terminal 
map({ "n" }, "<leader>v", function()
  require("nvchad.term").toggle { pos = "vsp", id = "verticalTerm" }
end, { desc = "Terminal Toggle vertical term" })
map({ "t" }, "<c-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "verticalTerm" }
end, { desc = "Terminal Toggle vertical term" })
map({ "n" }, "<leader>h", function()
  require("nvchad.term").toggle { pos = "sp", id = "horizontalTerm" }
end, { desc = "Terminal Toggle horizontal term" })
map({ "t" }, "<c-h>", function()
  require("nvchad.term").toggle { pos = "sp", id = "horizontalTerm" }
end, { desc = "Terminal Toggle horizontal term" })

-- toggle ntree
map({ "n", "v" }, "<leader>n", ":NvimTreeToggle<CR>")
