-- Orange/Gold accent, warm highlights on cool base

local M = {}

M.palette = {
    -- Background colors (slightly warm undertone)
    bg0 = "#181618", -- Dark with subtle warmth
    bg1 = "#201e20", -- Slightly lighter
    bg2 = "#2a282c", -- Popup/float background
    bg3 = "#3a3640", -- Visual selection
    bg4 = "#4a4650", -- Borders

    -- Foreground colors
    fg0 = "#807068", -- Comments (warm gray)
    fg1 = "#988880", -- Muted text
    fg2 = "#b0a8a0", -- Secondary
    fg3 = "#d0c8c0", -- Normal text (warm white)
    fg4 = "#e8e0d8", -- Bright text

    -- ANSI colors (sunset theme)
    black = "#2a282c",
    red = "#e87878", -- Coral red
    green = "#a0c888", -- Soft green
    yellow = "#e8c060", -- Golden yellow (star)
    blue = "#88a8c8", -- Soft blue
    magenta = "#c090b0", -- Dusty rose
    cyan = "#88c0b8", -- Muted teal
    white = "#d0c8c0",

    -- Bright ANSI colors
    bright_black = "#5a5450",
    bright_red = "#f08888",
    bright_green = "#b0d898",
    bright_yellow = "#f0d070", -- Bright gold
    bright_blue = "#98b8d8",
    bright_magenta = "#d0a0c0",
    bright_cyan = "#98d0c8",
    bright_white = "#e8e0d8",

    -- Additional colors
    orange = "#e8a050", -- Sunset orange (star)
    purple = "#a888b8", -- Muted purple
    teal = "#78b8b0", -- Soft teal
    pink = "#d88898", -- Warm pink
    ice = "#a8c8d8", -- Cool accent

    -- Diff colors
    diff_add = "#2a3828",
    diff_delete = "#402828",
    diff_change = "#302830",
    diff_text = "#484040",

    -- Diagnostic colors
    error = "#e87878",
    warn = "#e8a050",
    info = "#88a8c8",
    hint = "#a0c888",

    -- Special
    none = "NONE",
}

return M
