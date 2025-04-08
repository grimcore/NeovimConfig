require "nvchad.options"
local markdown = require "render-markdown"

-- add yours here!
local colors = require("tokyonight.colors").setup() -- pass in any of the config options as explained above
local util = require "tokyonight.util"

markdown.background = colors.bg_dark
markdown.my_error = util.lighten(colors.red1, 0.3) -- number between 0 and 1. 0 results in white, 1 results in red1

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

local options = {}
options = vim.tbl_deep_extend("force", options, require "nvchad.cmp")
require("cmp").setup(options)


