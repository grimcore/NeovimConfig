vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
    {
        "NvChad/NvChad",
        lazy = false,
        branch = "v2.5",
        import = "nvchad.plugins",
        config = function()
            require "options"
        end,
    },

    { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "nvchad.autocmds"

vim.schedule(function()
    require "mappings"
end)

local null_ls = require "null-ls"

local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre" -- or "BufWritePost"
local async = event == "BufWritePost"

null_ls.setup {
    on_attach = function(client, bufnr)
        if client.supports_method "textDocument/formatting" then
            vim.keymap.set("n", "<Leader>f", function()
                vim.lsp.buf.format { bufnr = vim.api.nvim_get_current_buf() }
            end, { buffer = bufnr, desc = "[lsp] format" })

            -- format on save
            vim.api.nvim_clear_autocmds { buffer = bufnr, group = group }
            vim.api.nvim_create_autocmd(event, {
                buffer = bufnr,
                group = group,
                callback = function()
                    vim.lsp.buf.format { bufnr = bufnr, async = async }
                end,
                desc = "[lsp] format on save",
            })
        end

        if client.supports_method "textDocument/rangeFormatting" then
            vim.keymap.set("x", "<Leader>f", function()
                vim.lsp.buf.format { bufnr = vim.api.nvim_get_current_buf() }
            end, { buffer = bufnr, desc = "[lsp] format" })
        end
    end,
}

local prettier = require "prettier"

prettier.setup {
    bin = "prettier", -- or `'prettierd'` (v0.23.3+)
    filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "scss",
        "yaml",
        "swift",
    },
    ["null-ls"] = {
        condition = function()
            return prettier.config_exists {
                -- if `false`, skips checking `package.json` for `"prettier"` key
                check_package_json = true,
            }
        end,
        runtime_condition = function(params)
            -- return false to skip running prettier
            return true
        end,
        timeout = 5000,
    },
    cli_options = {
        arrow_parens = "always",
        bracket_spacing = true,
        bracket_same_line = false,
        embedded_language_formatting = "auto",
        end_of_line = "lf",
        html_whitespace_sensitivity = "css",
        -- jsx_bracket_same_line = false,
        jsx_single_quote = false,
        print_width = 80,
        prose_wrap = "preserve",
        quote_props = "as-needed",
        semi = true,
        single_attribute_per_line = false,
        single_quote = false,
        tab_width = 4,
        trailing_comma = "es5",
        use_tabs = false,
        vue_indent_script_and_style = true,
    },
}


require("mini.icons").setup()

require("render-markdown").setup()
--
require("render-markdown").enable()

-- display relative line numbers
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

local autocmd = vim.api.nvim_create_autocmd

autocmd("VimEnter", {
    command = ":silent !kitty @ set-spacing padding=0 margin=0",
})

autocmd("VimLeavePre", {
    command = ":silent !kitty @ set-spacing padding=20 margin=10",
})

autocmd("BufReadPost", {
    pattern = "*",
    callback = function()
        local line = vim.fn.line "'\""
        if
            line > 1
            and line <= vim.fn.line "$"
            and vim.bo.filetype ~= "commit"
            and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
        then
            vim.cmd 'normal! g`"'
        end
    end,
})

-- ------< info :h nvim_set_hl >------
-- vim.api.nvim_set_hl(0, "comment", {
--     fg = "#ffffff",
--     bg = "#bd93f9",
--     italic = true,
--     bold = true,
-- })

------< todo comments >------
vim.keymap.set("n", "]t", function()
    require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
    require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- You can also specify a list of valid jump keywords

-- vim.keymap.set("n", "]t", function()
--   require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }})
-- end, { desc = "Next error/warning todo comment" })

vim.cmd [[colorscheme tokyonight]]

