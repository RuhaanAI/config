return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    -- ===== Core Neovim color settings =====
    vim.opt.termguicolors = true
    vim.opt.background = "dark"

    -- ===== Atom One Dark base theme =====
    require("onedark").setup({
      style = "dark",          -- Atom One Dark
      transparent = true,      -- matches your setup
      ending_tildes = false,

      code_style = {
        comments  = "italic",
        keywords  = "bold",
        functions = "none",
        strings   = "none",
        variables = "none",
      },

      diagnostics = {
        darker = true,
        undercurl = true,
        background = false,
      },
    })

    require("onedark").load()

    -- ===== Precise highlight overrides (visual match) =====
    local set = vim.api.nvim_set_hl

    -- Comments (soft, italic)
    set(0, "Comment", {
      fg = "#5C6370",
      italic = true,
    })

    -- Section dividers / documentation comments
    set(0, "@comment.documentation", {
      fg = "#6B717D",
      italic = true,
    })

    -- Keywords: import, for, return
    set(0, "@keyword", {
      fg = "#C678DD",
      bold = true,
    })

    -- Built-in functions
    set(0, "@function.builtin", {
      fg = "#61AFEF",
    })

    -- Function calls: pd.read_csv, plt.plot
    set(0, "@function.call", {
      fg = "#61AFEF",
    })

    -- Strings (file paths, labels)
    set(0, "@string", {
      fg = "#98C379",
    })

    -- Numbers: 8.314, indices, constants
    set(0, "@number", {
      fg = "#D19A66",
    })

    -- Constants: R = 8.314
    set(0, "@constant", {
      fg = "#D19A66",
    })

    -- Variables (neutral, readable)
    set(0, "@variable", {
      fg = "#ABB2BF",
    })

    -- Types (DataFrame, dict, etc.)
    set(0, "@type", {
      fg = "#E5C07B",
    })

    -- Operators (=, +, -, /)
    set(0, "@operator", {
      fg = "#56B6C2",
    })

    -- Line numbers (subtle)
    set(0, "LineNr", {
      fg = "#4B5263",
    })

    -- Cursor line
    set(0, "CursorLine", {
      bg = "#2C313C",
    })

    -- Cursor line number
    set(0, "CursorLineNr", {
      fg = "#ABB2BF",
      bold = true,
    })
  end,
}
