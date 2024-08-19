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
        "lua-language-server", "stylua",
        "html-lsp", "css-lsp", "prettier"
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "javascript", "typescript", "c", "markdown", "markdown_inline", "bash", "json"
      },
    },
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
  },

  {
    "nvim-lua/plenary.nvim"
  },

  {
    'MunifTanjim/prettier.nvim',
    run = 'npm install',
    requires = {
      'neovim/nvim-lspconfig',
      'jose-elias-alvarez/null-ls.nvim'
    }
  },

  {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.g.codeium_disable_bindings = 1 -- disable default bindings
      vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<C-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<C-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<C-.>', function() return vim.fn['codeium#Complete']() end, { expr = true, silent = true })
    end
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {},
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    lazy = false,
  },
  {
    'nvim-tree/nvim-web-devicons',
  },

  -- {
  --   "epwalsh/obsidian.nvim",
  -- version = "*",  -- recommended, use latest release instead of latest commit
  -- lazy = true,
  -- ft = "markdown",
  -- -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- -- event = {
  -- --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  -- --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  -- --   -- refer to `:h file-pattern` for more examples
  -- --   "BufReadPre path/to/my-vault/*.md",
  -- --   "BufNewFile path/to/my-vault/*.md",
  -- -- },
  -- dependencies = {
  --   -- Required.
  --   "nvim-lua/plenary.nvim",
  --
  --   -- see below for full list of optional dependencies 👇
  -- },
  -- opts = {
  --   workspaces = {
  --     {
  --       name = "personal",
  --       path = "~/vaults/personal",
  --     },
  --     {
  --       name = "work",
  --       path = "~/vaults/work",
  --     },
  --   },
  --
  --   -- see below for full list of options 👇
  -- },
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
