return {
  "MeanderingProgrammer/render-markdown.nvim",

  opts = {
    file_types = { "markdown", "quarto" },

    anti_conceal = {
      enabled = true,
      -- Which elements to always show, ignoring anti conceal behavior. Values can either be booleans
      -- to fix the behavior or string lists representing modes where anti conceal behavior will be
      -- ignored. Possible keys are:
      --  head_icon, head_background, head_border, code_language, code_background, code_border
      --  dash, bullet, check_icon, check_scope, quote, table_border, callout, link, sign
      ignore = {
        code_background = true,
        sign = true,
      },
      above = 0,
      below = 0,
    },

    on = {
      attach = function() end,
    },

    debounce = 100,

    win_options = {
      conceallevel = {
        default = vim.api.nvim_get_option_value("conceallevel", {}),
        rendered = 3,
      },
      concealcursor = {
        default = vim.api.nvim_get_option_value("concealcursor", {}),
        rendered = "",
      },
    },

    overrides = {
      buftype = {
        nofile = {
          padding = { highlight = "NormalFloat" },
          sign = { enabled = false },
        },
      },
      filetype = {},
    },

    log_level = "error",
    log_runtime = false,

    padding = {
      highlight = "Normal",
    },

    quote = {
      enabled = true,
      render_modes = false,
      icon = "▋",
      repeat_linebreak = false,
      highlight = "RenderMarkdownQuote",
    },

    callout = {
      note = {
        raw = "[!NOTE]",
        rendered = "󰋽 Note",
        highlight = "RenderMarkdownInfo",
        category = "github",
      },
      tip = {
        raw = "[!TIP]",
        rendered = "󰌶 Tip",
        highlight = "RenderMarkdownSuccess",
        category = "github",
      },
      important = {
        raw = "[!IMPORTANT]",
        rendered = "󰅾 Important",
        highlight = "RenderMarkdownHint",
        category = "github",
      },
      warning = {
        raw = "[!WARNING]",
        rendered = "󰀪 Warning",
        highlight = "RenderMarkdownWarn",
        category = "github",
      },
      caution = {
        raw = "[!CAUTION]",
        rendered = "󰳦 Caution",
        highlight = "RenderMarkdownError",
        category = "github",
      },
      abstract = {
        raw = "[!ABSTRACT]",
        rendered = "󰨸 Abstract",
        highlight = "RenderMarkdownInfo",
        category = "obsidian",
      },
      summary = {
        raw = "[!SUMMARY]",
        rendered = "󰨸 Summary",
        highlight = "RenderMarkdownInfo",
        category = "obsidian",
      },
      tldr = {
        raw = "[!TLDR]",
        rendered = "󰨸 Tldr",
        highlight = "RenderMarkdownInfo",
        category = "obsidian",
      },
      info = {
        raw = "[!INFO]",
        rendered = "󰋽 Info",
        highlight = "RenderMarkdownInfo",
        category = "obsidian",
      },
      todo = {
        raw = "[!TODO]",
        rendered = "󰗡 Todo",
        highlight = "RenderMarkdownInfo",
        category = "obsidian",
      },
      hint = {
        raw = "[!HINT]",
        rendered = "󰌶 Hint",
        highlight = "RenderMarkdownSuccess",
        category = "obsidian",
      },
      success = {
        raw = "[!SUCCESS]",
        rendered = "󰄬 Success",
        highlight = "RenderMarkdownSuccess",
        category = "obsidian",
      },
      check = {
        raw = "[!CHECK]",
        rendered = "󰄬 Check",
        highlight = "RenderMarkdownSuccess",
        category = "obsidian",
      },
      done = {
        raw = "[!DONE]",
        rendered = "󰄬 Done",
        highlight = "RenderMarkdownSuccess",
        category = "obsidian",
      },
      question = {
        raw = "[!QUESTION]",
        rendered = "󰘥 Question",
        highlight = "RenderMarkdownWarn",
        category = "obsidian",
      },
      help = {
        raw = "[!HELP]",
        rendered = "󰘥 Help",
        highlight = "RenderMarkdownWarn",
        category = "obsidian",
      },
      faq = {
        raw = "[!FAQ]",
        rendered = "󰘥 Faq",
        highlight = "RenderMarkdownWarn",
        category = "obsidian",
      },
      attention = {
        raw = "[!ATTENTION]",
        rendered = "󰀪 Attention",
        highlight = "RenderMarkdownWarn",
        category = "obsidian",
      },
      failure = {
        raw = "[!FAILURE]",
        rendered = "󰅖 Failure",
        highlight = "RenderMarkdownError",
        category = "obsidian",
      },
      fail = {
        raw = "[!FAIL]",
        rendered = "󰅖 Fail",
        highlight = "RenderMarkdownError",
        category = "obsidian",
      },
      missing = {
        raw = "[!MISSING]",
        rendered = "󰅖 Missing",
        highlight = "RenderMarkdownError",
        category = "obsidian",
      },
      danger = {
        raw = "[!DANGER]",
        rendered = "󱐌 Danger",
        highlight = "RenderMarkdownError",
        category = "obsidian",
      },
      error = {
        raw = "[!ERROR]",
        rendered = "󱐌 Error",
        highlight = "RenderMarkdownError",
        category = "obsidian",
      },
      bug = {
        raw = "[!BUG]",
        rendered = "󰨰 Bug",
        highlight = "RenderMarkdownError",
        category = "obsidian",
      },
      example = {
        raw = "[!EXAMPLE]",
        rendered = "󰉹 Example",
        highlight = "RenderMarkdownHint",
        category = "obsidian",
      },
      quote = {
        raw = "[!QUOTE]",
        rendered = "󱆨 Quote",
        highlight = "RenderMarkdownQuote",
        category = "obsidian",
      },
      cite = {
        raw = "[!CITE]",
        rendered = "󱆨 Cite",
        highlight = "RenderMarkdownQuote",
        category = "obsidian",
      },
    },

    checkbox = {
      enabled = true,
      render_modes = false,
      right_pad = 1,
      unchecked = {
        icon = "󰄱 ",
        highlight = "RenderMarkdownUnchecked",
        scope_highlight = nil,
      },
      checked = {
        icon = "󰱒 ",
        highlight = "RenderMarkdownChecked",
        scope_highlight = nil,
      },
      custom = {
        todo = { raw = "[-]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo", scope_highlight = nil },
      },
    },

    code = {
      enabled = true,
      render_modes = false,
      sign = true,
      style = "full",
      position = "left",
      language_pad = 0,
      language_icon = true,
      language_name = true,
      disable_background = { "diff" },
      width = "full",
      left_margin = 0,
      left_pad = 0,
      right_pad = 0,
      min_width = 0,
      border = "hide",
      above = "▄",
      below = "▀",
      inline_left = "",
      inline_right = "",
      inline_pad = 0,
      highlight = "RenderMarkdownCode",
      highlight_language = nil,
      highlight_border = "RenderMarkdownCodeBorder",
      highlight_fallback = "RenderMarkdownCodeFallback",
      highlight_inline = "RenderMarkdownCodeInline",
    },

    vim.api.nvim_set_hl(0, "markdown.head_background", { link = "Normal", default = true }),

    dash = {
      enabled = true,
      render_modes = false,
      icon = "─",
      width = "full",
      left_margin = 0,
      highlight = "RenderMarkdownDash",
    },

    heading = {
      icons = { "󰼏 ", "󰎨 " },
      border = true,
      border_virtual = true,
    },

    indent = {
      enabled = true,
      skip_heading = true,
    },

    latex = {
      enabled = true,
      render_modes = false,
      converter = "latex2text",
      highlight = "RenderMarkdownMath",
      position = "above",
      top_pad = 0,
      bottom_pad = 0,
    },

    link = {
      enabled = true,
      render_modes = false,
      footnote = {
        enabled = true,
        superscript = true,
        prefix = "",
        suffix = "",
      },
      image = "󰥶 ",
      email = "󰀓 ",
      hyperlink = "󰌹 ",
      highlight = "RenderMarkdownLink",
      wiki = {
        icon = "󱗖 ",
        body = function()
          return nil
        end,
        highlight = "RenderMarkdownWikiLink",
      },
      custom = {
        web = { pattern = "^http", icon = "󰖟 " },
        discord = { pattern = "discord%.com", icon = "󰙯 " },
        github = { pattern = "github%.com", icon = "󰊤 " },
        gitlab = { pattern = "gitlab%.com", icon = "󰮠 " },
        google = { pattern = "google%.com", icon = "󰊭 " },
        neovim = { pattern = "neovim%.io", icon = " " },
        reddit = { pattern = "reddit%.com", icon = "󰑍 " },
        stackoverflow = { pattern = "stackoverflow%.com", icon = "󰓌 " },
        wikipedia = { pattern = "wikipedia%.org", icon = "󰖬 " },
        youtube = { pattern = "youtube%.com", icon = "󰗃 " },
      },
    },

    bullet = {
      enabled = true,
      render_modes = false,
      icons = { "●", "○", "◆", "◇" },
      ordered_icons = function(ctx)
        local value = vim.trim(ctx.value)
        local index = tonumber(value:sub(1, #value - 1))
        return string.format("%d.", index > 1 and index or ctx.index)
      end,
      left_pad = 4,
      right_pad = 0,
      highlight = "RenderMarkdownBullet",
      scope_highlight = {},
    },

    paragraph = {
      enabled = true,
      render_modes = false,
      left_margin = 0,
      min_width = 0,
    },

    sign = {
      enabled = true,
      highlight = "RenderMarkdownSign",
    },

    pipe_table = { preset = "round" },
  },
}
