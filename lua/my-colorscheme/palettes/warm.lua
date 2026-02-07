-- Warm background, blue shifted to purple

local M = {}

M.palette = {
    -- Background colors (warm undertone)
    bg0 = "#1a1618", -- Warm dark background
    bg1 = "#221e20", -- Warm slightly lighter
    bg2 = "#2c2628", -- Warm popup background
    bg3 = "#3e3638", -- Warm selection
    bg4 = "#504848", -- Warm borders

    -- Foreground colors (warm tint)
    fg0 = "#786868", -- Comments (warm gray)
    fg1 = "#907878", -- Muted text
    fg2 = "#a89090", -- Secondary
    fg3 = "#ccc0b8", -- Normal text (cream)
    fg4 = "#e0d8d0", -- Bright text

    -- ANSI colors (warm, purple-shifted)
    black = "#2c2628",
    red = "#d87070", -- Warm red
    green = "#98b880", -- Olive green
    yellow = "#d8b868", -- Warm gold
    blue = "#9890c0", -- Purple-shifted blue
    magenta = "#b888a8", -- Mauve
    cyan = "#88b0a8", -- Sage
    white = "#ccc0b8",

    -- Bright ANSI colors
    bright_black = "#585050",
    bright_red = "#e88080",
    bright_green = "#a8c890",
    bright_yellow = "#e8c878",
    bright_blue = "#a8a0d0", -- Lavender
    bright_magenta = "#c898b8",
    bright_cyan = "#98c0b8",
    bright_white = "#e0d8d0",

    -- Additional colors
    orange = "#d89860", -- Warm orange
    purple = "#a080b0", -- True purple
    teal = "#78a898", -- Sage teal
    pink = "#c88898", -- Dusty pink
    ice = "#a8b8c8", -- Cool accent

    -- Diff colors
    diff_add = "#283020",
    diff_delete = "#382020",
    diff_change = "#282030",
    diff_text = "#404048",

    -- Diagnostic colors
    error = "#d87070",
    warn = "#d8b868",
    info = "#9890c0",
    hint = "#98b880",

    -- Special
    none = "NONE",
}

return M
