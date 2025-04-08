-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("mini.icons").setup()

require("render-markdown").setup()
--
require("render-markdown").enable()

-- display relative line numbers
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
