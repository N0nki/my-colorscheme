-- Cyan/Blue emphasis, cool impression

local M = {}

M.palette = {
    -- Background colors (blue undertone)
    bg0 = "#141820", -- Deep blue-black
    bg1 = "#1a2028", -- Blue-tinted dark
    bg2 = "#242c38", -- Cool gray
    bg3 = "#384050", -- Selection (blue-gray)
    bg4 = "#445060", -- Borders

    -- Foreground colors (cool white)
    fg0 = "#608090", -- Comments (blue-gray)
    fg1 = "#7898a8", -- Muted (cyan tint)
    fg2 = "#98aab8", -- Secondary
    fg3 = "#c8d4dc", -- Normal (cool white)
    fg4 = "#e0e8f0", -- Bright

    -- ANSI colors (cyan/blue emphasis)
    black = "#242c38",
    red = "#d87880", -- Muted coral
    green = "#90c4a0", -- Cyan-tinted green
    yellow = "#c8b478", -- Muted gold
    blue = "#7eb4d8", -- Bright sky blue
    magenta = "#9090c8", -- Blue-shifted purple
    cyan = "#70c8d0", -- Vivid cyan (star)
    white = "#c8d4dc",

    -- Bright ANSI colors
    bright_black = "#445060",
    bright_red = "#e88890",
    bright_green = "#a0d4b0",
    bright_yellow = "#d8c488",
    bright_blue = "#90c8e8", -- Bright blue
    bright_magenta = "#a0a0d8",
    bright_cyan = "#80d8e0", -- Bright cyan
    bright_white = "#e0e8f0",

    -- Additional colors
    orange = "#c89868", -- Muted orange
    purple = "#8888c0", -- Cool purple
    teal = "#60b8c0", -- Strong teal
    pink = "#c88090", -- Cool pink
    ice = "#a0d8e8", -- Ice blue accent

    -- Diff colors
    diff_add = "#304838",
    diff_delete = "#483038",
    diff_change = "#283848",
    diff_text = "#406070",

    -- Diagnostic colors
    error = "#d87880",
    warn = "#c8b478",
    info = "#7eb4d8",
    hint = "#90c4a0",

    -- Special
    none = "NONE",
}

return M
