-- Pulse palette
-- Cyberpunk neon pink/cyan aesthetic

local M = {}

M.palette = {
    -- Background colors (deep purple-black)
    bg0 = "#0f0f1a", -- Deep purple-black
    bg1 = "#16161e", -- Slightly lighter
    bg2 = "#1e1e2e", -- Popup background
    bg3 = "#2a2a3c", -- Selection
    bg4 = "#3a3a4f", -- Borders

    -- Foreground colors (lavender-white)
    fg0 = "#565f89", -- Comments
    fg1 = "#787c99", -- Muted
    fg2 = "#a9b1d6", -- Secondary
    fg3 = "#c0caf5", -- Normal text
    fg4 = "#d5d6ec", -- Bright

    -- ANSI colors (neon)
    black = "#1e1e2e",
    red = "#ff5577",     -- Neon red-pink
    green = "#50fa7b",   -- Dracula green
    yellow = "#f1fa8c",  -- Bright yellow
    blue = "#7aa2f7",    -- Tokyo blue
    magenta = "#ff79c6", -- Neon pink (star)
    cyan = "#8be9fd",    -- Neon cyan (star)
    white = "#c0caf5",

    -- Bright ANSI colors
    bright_black = "#565f89",
    bright_red = "#ff6e8a",
    bright_green = "#69ff94",
    bright_yellow = "#ffffa5",
    bright_blue = "#89b4fa",
    bright_magenta = "#ff92d0",
    bright_cyan = "#a4ffff",
    bright_white = "#d5d6ec",

    -- Additional colors
    orange = "#ffb86c",  -- Dracula orange
    purple = "#bd93f9",  -- Dracula purple
    teal = "#0db9d7",    -- Electric teal
    pink = "#ff79c6",    -- Neon pink
    ice = "#89ddff",     -- Ice blue

    -- Diff colors
    diff_add = "#1a3028",
    diff_delete = "#3d1a28",
    diff_change = "#1a2040",
    diff_text = "#2a3a60",

    -- Diagnostic colors
    error = "#ff5577",
    warn = "#f1fa8c",
    info = "#7aa2f7",
    hint = "#50fa7b",

    -- Special
    none = "NONE",
}

return M
