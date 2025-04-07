-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig

local M = {
    base46 = {
        theme = "tokyodark",
        hl_add = {},
        hl_override = {
            Comment = { italic = true },
            ["@comment"] = { italic = true },
        },
        transparency = false,
    },

    ui = {
        -- cmp = {
        --     lspkind_text = true,
        --     style = "default",
        --     format_colors = {
        --         tailwind = false,
        --     }
        -- },

        telescope = { style = "bordered" },

        statusline = {
            -- more opts
            order = { "oneSpace", "mode", "file", "git", "%=", "lsp_msg", "%=", "lsp", "oneSpace", "cwd", "oneSpace" },
            modules = {
                oneSpace = " ",
                twoSpace = "  ",
            },
            -- Separator style and theme
            theme = "minimal", -- default, vscode, vscode_colored or minimal
            -- default, round, block, and arrow are supported only by the default statusline theme.
            -- the round and block separators are also supported by the minimal theme.
            separator_style = "round", -- default, round, block or arrow
        },

        tabufline = {
            enabled = true,
            lazyload = true,
            order = { "treeOffset", "buffers", "tabs" },
            modules = {},
        },
        nvdash = {
            load_on_startup = true,

            header = {
                "                            ",
                "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
                "   ▄▀███▄     ▄██ █████▀    ",
                "   ██▄▀███▄   ███           ",
                "   ███  ▀███▄ ███           ",
                "   ███    ▀██ ███           ",
                "   ███      ▀ ███           ",
                "   ▀██ █████▄▀█▀▄██████▄    ",
                "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
                "                            ",
                "     Powered By  eovim    ",
                "                            ",
            },

            buttons = {
                { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
                { txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
                -- more... check nvconfig.lua file for full list of buttons
            },
        },
    },

    term = {
        winopts = { number = false, relativenumber = false },
        sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
        float = {
            relative = "editor",
            row = 0.3,
            col = 0.25,
            width = 0.5,
            height = 0.4,
            border = "single",
        },
    },

    lsp = { signature = true },

    cheatsheet = {
        theme = "grid", -- simple/grid
        excluded_groups = { "autopairs", "Nvim", "Opens" }, -- can add group name or with mode
    },

    mason = {
        pkgs = {
            "lua-language-server",
            "stylua",
            "html-lsp",
            "css-lsp",
            "prettier",
        },
    },

    colorify = {
        enabled = true,
        mode = "virtual", -- fg, bg, virtual
        virt_text = "󱓻 ",
        highlight = { hex = true, lspvars = true },
    },
}

return M
