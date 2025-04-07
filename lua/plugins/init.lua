return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "stylua",
                "html-lsp",
                "css-lsp",
                "prettier",
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
                "javascript",
                "typescript",
                "c",
                "markdown",
                "markdown_inline",
                "bash",
                "json",
            },
        },
    },

    {
        "nvim-lua/plenary.nvim",
    },

    {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("null-ls").setup()
        end,
        requires = { "nvim-lua/plenary.nvim" },
    },

    {
        "nvchad/ui",
        config = function()
            require "nvchad"
        end,
    },

    {
        "nvchad/base46",
        lazy = true,
        build = function()
            require("base46").load_all_highlights()
        end,
    },

    {
        "MunifTanjim/prettier.nvim",
        run = "npm install",
        requires = {
            "neovim/nvim-lspconfig",
            "jose-elias-alvarez/null-ls.nvim",
        },
    },

    {
        "Exafunction/codeium.vim",
        event = "BufEnter",
        config = function()
            -- Change '<C-g>' here to any keycode you like.
            vim.g.codeium_disable_bindings = 1 -- disable default bindings
            vim.keymap.set("i", "<C-g>", function()
                return vim.fn["codeium#Accept"]()
            end, { expr = true, silent = true })
            vim.keymap.set("i", "<C-;>", function()
                return vim.fn["codeium#CycleCompletions"](1)
            end, { expr = true, silent = true })
            vim.keymap.set("i", "<C-,>", function()
                return vim.fn["codeium#CycleCompletions"](-1)
            end, { expr = true, silent = true })
            vim.keymap.set("i", "<C-x>", function()
                return vim.fn["codeium#Clear"]()
            end, { expr = true, silent = true })
            vim.keymap.set("i", "<C-.>", function()
                return vim.fn["codeium#Complete"]()
            end, { expr = true, silent = true })
        end,
    },

    -- this opts will extend the default opts
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "html", "css", "bash", "lua", "vim" },
        },
    },

    { "echasnovski/mini.nvim", version = false },

    { "nvim-tree/nvim-web-devicons" },

    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {},
    },

    { "elkowar/yuck.vim", lazy = false }, -- load a plugin at startup

    { "folke/which-key.nvim", enabled = false },

    -- You can use any plugin specification from lazy.nvim
    {
        "Pocco81/TrueZen.nvim",
        cmd = { "TZAtaraxis", "TZMinimalist" },
        config = function()
            require "configs.truezen" -- just an example path
        end,
    },

    -- If your opts uses a function call ex: require*, then make opts spec a function
    -- should return the modified default config as well
    -- here we just call the default telescope config
    -- And edit its mappinsg
    {
        "nvim-telescope/telescope.nvim",
        opts = function()
            local conf = require "nvchad.configs.telescope"

            conf.defaults.mappings.i = {
                ["<C-j>"] = require("telescope.actions").move_selection_next,
                ["<Esc>"] = require("telescope.actions").close,
            }

            -- or
            -- table.insert(conf.defaults.mappings.i, your table)

            return conf
        end,
    },

    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        lazy = false,
        opts = {
            --     keywords = {
            --         FIX = {
            --             icon = " ", -- icon used for the sign, and in search results
            --             color = "error", -- can be a hex color, or a named color (see below)
            --             alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
            --             -- signs = false, -- configure signs for some keywords individually
            --         },
            --         TODO = { icon = " ", color = "info" },
            --         HACK = { icon = " ", color = "warning" },
            --         WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
            --         PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
            --         NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
            --         TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
            --     },
        },
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = { style = "night" },
    },
}
