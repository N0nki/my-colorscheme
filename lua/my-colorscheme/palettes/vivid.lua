-- Higher saturation, stronger contrast

local M = {}

M.palette = {
    -- Background colors (deeper, more contrast)
    bg0 = "#0f1117", -- Deeper background
    bg1 = "#181a24", -- Slightly lighter
    bg2 = "#232633", -- Popup/float background
    bg3 = "#353a50", -- Visual selection
    bg4 = "#454b68", -- Borders

    -- Foreground colors (brighter)
    fg0 = "#6875a0", -- Comments (more saturated)
    fg1 = "#8090b8", -- Muted text
    fg2 = "#a0aac8", -- Secondary
    fg3 = "#d0d4e8", -- Normal text (brighter)
    fg4 = "#e8ecff", -- Bright text

    -- ANSI colors (vivid, saturated)
    black = "#181a24",
    red = "#ff6b6b", -- Vivid red
    green = "#7dd88b", -- Vivid green
    yellow = "#ffd866", -- Vivid yellow
    blue = "#6ba5ff", -- Vivid blue
    magenta = "#b88bff", -- Vivid purple
    cyan = "#5bd4e8", -- Vivid cyan
    white = "#d0d4e8",

    -- Bright ANSI colors
    bright_black = "#6875a0",
    bright_red = "#ff8888",
    bright_green = "#98e8a5",
    bright_yellow = "#ffe088",
    bright_blue = "#88bbff",
    bright_magenta = "#cca8ff",
    bright_cyan = "#78e0f0",
    bright_white = "#e8ecff",

    -- Additional colors
    orange = "#ff9966", -- Vivid orange
    purple = "#a080e0", -- Vivid purple
    teal = "#48d0c0", -- Vivid teal
    pink = "#ff88b0", -- Vivid pink
    ice = "#88d8ff", -- Vivid ice blue

    -- Diff colors
    diff_add = "#1a3828",
    diff_delete = "#3d1a28",
    diff_change = "#1a2848",
    diff_text = "#2a4070",

    -- Diagnostic colors
    error = "#ff6b6b",
    warn = "#ffd866",
    info = "#6ba5ff",
    hint = "#7dd88b",

    -- Special
    none = "NONE",
}

return M
