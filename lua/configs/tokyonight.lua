return {
    "folke/tokyonight.nvim",

    style = "night",

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
