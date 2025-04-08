require("nvim-tree").setup {}
require("telescope").setup {}
require("tokyonight").setup {}
local M = {
require("tokyonight").setup {
    on_highlights = function(hl, c)
        local prompt = "#2d3149"
        hl.telescopenormal = {
            bg = c.bg_dark,
            fg = c.fg_dark,
        }
        hl.telescopeborder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
        hl.telescopepromptnormal = {
            bg = prompt,
        }
        hl.telescopepromptborder = {
            bg = prompt,
            fg = prompt,
        }
        hl.telescopeprompttitle = {
            bg = prompt,
            fg = prompt,
        }
        hl.telescopepreviewtitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
        hl.telescoperesultstitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
    end,
}
}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
        TelescopeBorder         = { fg = c.border_highlight, bg = c.bg_float },
        TelescopeNormal         = { fg = c.fg, bg = c.bg_float },
        TelescopePromptBorder   = { fg = c.orange, bg = c.bg_float },
        TelescopePromptTitle    = { fg = c.orange, bg = c.bg_float },
        TelescopeResultsComment = { fg = c.dark3 },
  }
end

return M
