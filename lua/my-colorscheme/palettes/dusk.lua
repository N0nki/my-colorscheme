-- Dusk palette
-- Japanese twilight with cherry blossom accent

local M = {}

M.palette = {
    -- Background colors (deep indigo/plum)
    bg0 = "#1a1826", -- Deep plum
    bg1 = "#1f1d2e", -- Rosé Pine base
    bg2 = "#26233a", -- Rosé Pine surface
    bg3 = "#393552", -- Selection
    bg4 = "#4a465d", -- Borders

    -- Foreground colors (soft cream)
    fg0 = "#6e6a86", -- Comments (muted)
    fg1 = "#908caa", -- Subtle
    fg2 = "#c4a7e7", -- Iris (Rosé Pine)
    fg3 = "#e0def4", -- Text (cream)
    fg4 = "#f0eef8", -- Bright

    -- ANSI colors (sakura inspired)
    black = "#26233a",
    red = "#eb6f92",     -- Rosé Pine love (sakura pink)
    green = "#9ccfd8",   -- Rosé Pine foam (sage)
    yellow = "#f6c177",  -- Rosé Pine gold
    blue = "#7e9cd8",    -- Kanagawa blue
    magenta = "#c4a7e7", -- Rosé Pine iris
    cyan = "#9ccfd8",    -- Foam
    white = "#e0def4",

    -- Bright ANSI colors
    bright_black = "#6e6a86",
    bright_red = "#f598b0",    -- Bright sakura
    bright_green = "#b0e0e8",
    bright_yellow = "#f8d098",
    bright_blue = "#92b0e8",
    bright_magenta = "#d4c0f0",
    bright_cyan = "#b0e0e8",
    bright_white = "#f0eef8",

    -- Additional colors
    orange = "#e6a058",  -- Warm gold
    purple = "#938aa9",  -- Kanagawa spring violet
    teal = "#7aa89f",    -- Kanagawa wave
    pink = "#eb6f92",    -- Sakura (star)
    ice = "#a3d4d5",     -- Kanagawa aqua

    -- Diff colors
    diff_add = "#2a3832",
    diff_delete = "#3d2832",
    diff_change = "#2a2838",
    diff_text = "#3d3850",

    -- Diagnostic colors
    error = "#eb6f92",
    warn = "#f6c177",
    info = "#7e9cd8",
    hint = "#9ccfd8",

    -- Special
    none = "NONE",
}

return M
