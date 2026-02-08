-- Haze palette
-- Nordic calm + pastel softness

local M = {}

M.palette = {
    -- Background colors (blue-gray, Nordic)
    bg0 = "#1e2030", -- Deep blue-gray
    bg1 = "#232536", -- Slightly lighter
    bg2 = "#2e3244", -- Popup background
    bg3 = "#3b4056", -- Selection
    bg4 = "#495068", -- Borders

    -- Foreground colors (soft white)
    fg0 = "#6e738d", -- Comments
    fg1 = "#8087a2", -- Muted
    fg2 = "#a5adce", -- Secondary
    fg3 = "#cad3f5", -- Normal text (Catppuccin)
    fg4 = "#e4e8f8", -- Bright

    -- ANSI colors (pastel Nordic)
    black = "#232536",
    red = "#ed8796",     -- Catppuccin maroon
    green = "#a6da95",   -- Catppuccin green
    yellow = "#eed49f",  -- Catppuccin yellow
    blue = "#8aadf4",    -- Catppuccin blue
    magenta = "#c6a0f6", -- Catppuccin mauve
    cyan = "#8bd5ca",    -- Catppuccin teal
    white = "#cad3f5",

    -- Bright ANSI colors
    bright_black = "#6e738d",
    bright_red = "#f5a9b8",
    bright_green = "#b8e6a8",
    bright_yellow = "#f5e0b0",
    bright_blue = "#a0c0f8",
    bright_magenta = "#d4b8f8",
    bright_cyan = "#a0e8dc",
    bright_white = "#e4e8f8",

    -- Additional colors
    orange = "#f5a97f",  -- Catppuccin peach
    purple = "#b7bdf8",  -- Catppuccin lavender
    teal = "#91d7e3",    -- Catppuccin sapphire
    pink = "#f5bde6",    -- Catppuccin pink
    ice = "#99d1db",     -- Catppuccin sky

    -- Diff colors
    diff_add = "#2a3d2d",
    diff_delete = "#3d2a2d",
    diff_change = "#2a2d3d",
    diff_text = "#3a4060",

    -- Diagnostic colors
    error = "#ed8796",
    warn = "#eed49f",
    info = "#8aadf4",
    hint = "#a6da95",

    -- Special
    none = "NONE",
}

return M
