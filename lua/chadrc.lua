-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {
    ui = {
        telescope = {
            style = "bordered",
        },

        hl_override = {
            Comment = { italic = true },
            ["@comment"] = { italic = true },
        },
        tabufline = {
            --  more opts
            order = { "treeOffset", "buffers", "tabs", "btns" },
            modules = {
                -- You can add your custom component
            },
        },

        statusline = {
            -- more opts
            order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd" }, -- check stl/utils.lua file in ui repo
            modules = {
                -- The default cursor module is override
                cursor = function()
                    return "%#BruhHl#" .. " bruh " -- the highlight group here is BruhHl,
                end,
            },
            -- Separator style and theme
            theme = "minimal", -- default, vscode, vscode_colored or minimal
            -- default, round, block, and arrow are supported only by the default statusline theme.
            -- the round and block separators are also supported by the minimal theme.
            separator_style = "round", -- default, round, block or arrow
        },
    },

    base46 = {
        theme = "catppuccin",
        -- make backround transparent
        transparency = false,
    },
}

return M
