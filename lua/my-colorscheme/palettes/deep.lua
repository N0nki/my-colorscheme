-- Deep palette
-- Balanced colors with purple night accent

local M = {}

M.palette = {
    -- Background colors (deep blue-black)
    bg0 = "#14161b", -- Deep midnight
    bg1 = "#1a1c23", -- One Dark bg
    bg2 = "#21252b", -- Slightly lighter
    bg3 = "#2c323c", -- Selection
    bg4 = "#3e4451", -- Borders

    -- Foreground colors
    fg0 = "#5c6370", -- Comments
    fg1 = "#737984", -- Muted
    fg2 = "#9da5b4", -- Secondary
    fg3 = "#abb2bf", -- Normal text (One Dark)
    fg4 = "#c8cdd5", -- Bright

    -- ANSI colors (One Dark + Tokyo Night purple)
    black = "#21252b",
    red = "#e06c75",     -- One Dark red
    green = "#98c379",   -- One Dark green
    yellow = "#e5c07b",  -- One Dark yellow
    blue = "#61afef",    -- One Dark blue
    magenta = "#bb9af7", -- Tokyo Night purple (star)
    cyan = "#56b6c2",    -- One Dark cyan
    white = "#abb2bf",

    -- Bright ANSI colors
    bright_black = "#5c6370",
    bright_red = "#e88892",
    bright_green = "#a8d08c",
    bright_yellow = "#ecd092",
    bright_blue = "#78c0f8",
    bright_magenta = "#cdb0ff", -- Bright purple
    bright_cyan = "#6cc8d4",
    bright_white = "#c8cdd5",

    -- Additional colors
    orange = "#d19a66",  -- One Dark orange
    purple = "#9d7cd8",  -- Tokyo Night purple variant
    teal = "#4fd6be",    -- Tokyo Night teal
    pink = "#f7768e",    -- Tokyo Night pink
    ice = "#7dcfff",     -- Tokyo Night ice

    -- Diff colors
    diff_add = "#2a3828",
    diff_delete = "#3d2828",
    diff_change = "#282838",
    diff_text = "#3a3a58",

    -- Diagnostic colors
    error = "#e06c75",
    warn = "#e5c07b",
    info = "#61afef",
    hint = "#98c379",

    -- Special
    none = "NONE",
}

return M
