require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

local options = {}
options = vim.tbl_deep_extend("force", options, require "nvchad.cmp")
require("cmp").setup(options)
