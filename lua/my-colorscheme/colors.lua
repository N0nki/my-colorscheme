-- my-colorscheme color palette
-- Supports multiple style variations

local M = {}

-- Available styles
M.styles = { "frost", "vivid", "sunset", "warm", "pulse", "haze", "dusk", "deep" }

-- Get palette for specified style
function M.get_palette(style)
    local palettes = {
        frost = "my-colorscheme.palettes.frost",
        vivid = "my-colorscheme.palettes.vivid",
        sunset = "my-colorscheme.palettes.sunset",
        warm = "my-colorscheme.palettes.warm",
        pulse = "my-colorscheme.palettes.pulse",
        haze = "my-colorscheme.palettes.haze",
        dusk = "my-colorscheme.palettes.dusk",
        deep = "my-colorscheme.palettes.deep",
    }

    local module_name = palettes[style] or palettes.frost
    local ok, palette_module = pcall(require, module_name)
    if ok then
        return palette_module.palette
    else
        vim.notify("my-colorscheme: Failed to load palette '" .. style .. "', using frost", vim.log.levels.WARN)
        return require("my-colorscheme.palettes.frost").palette
    end
end

-- Setup colors with specified style
function M.setup(style)
    style = style or "original"

    -- Clear cached palette modules for hot-reload
    for _, name in ipairs(M.styles) do
        package.loaded["my-colorscheme.palettes." .. name] = nil
    end

    M.palette = M.get_palette(style)

    -- Semantic color mapping (for easy customization)
    M.semantic = {
        -- Editor
        bg = M.palette.bg0,
        bg_dark = M.palette.bg0,
        bg_highlight = M.palette.bg3,
        bg_visual = M.palette.bg3,
        bg_search = M.palette.yellow,
        bg_popup = M.palette.bg2,
        bg_statusline = M.palette.bg2,
        bg_sidebar = M.palette.bg0,
        bg_float = M.palette.bg0,

        fg = M.palette.fg3,
        fg_dark = M.palette.fg1,
        fg_gutter = M.palette.fg0,

        border = M.palette.bg4,
        cursor = M.palette.fg4,
        cursor_line = M.palette.bg1,

        -- Syntax
        comment = M.palette.fg0,
        string = M.palette.cyan,
        character = M.palette.cyan,
        number = M.palette.purple,
        boolean = M.palette.purple,
        constant = M.palette.purple,
        identifier = M.palette.fg3,
        func = M.palette.blue,
        statement = M.palette.blue,
        keyword = M.palette.blue,
        operator = M.palette.fg3,
        preproc = M.palette.green,
        type = M.palette.blue,
        special = M.palette.yellow,
        delimiter = M.palette.fg2,
        variable = M.palette.fg3,
        parameter = M.palette.yellow,
        field = M.palette.fg3,
        property = M.palette.fg3,

        -- Diagnostics
        diag_error = M.palette.error,
        diag_warn = M.palette.warn,
        diag_info = M.palette.info,
        diag_hint = M.palette.hint,

        -- Diff
        diff_add = M.palette.diff_add,
        diff_delete = M.palette.diff_delete,
        diff_change = M.palette.diff_change,
        diff_text = M.palette.diff_text,
        git_add = M.palette.green,
        git_delete = M.palette.red,
        git_change = M.palette.yellow,

        -- Git signs
        git_signs_add = M.palette.green,
        git_signs_change = M.palette.yellow,
        git_signs_delete = M.palette.red,
    }

    -- Terminal colors
    M.terminal = {
        terminal_color_0 = M.palette.black,
        terminal_color_1 = M.palette.red,
        terminal_color_2 = M.palette.green,
        terminal_color_3 = M.palette.yellow,
        terminal_color_4 = M.palette.blue,
        terminal_color_5 = M.palette.magenta,
        terminal_color_6 = M.palette.cyan,
        terminal_color_7 = M.palette.white,
        terminal_color_8 = M.palette.bright_black,
        terminal_color_9 = M.palette.bright_red,
        terminal_color_10 = M.palette.bright_green,
        terminal_color_11 = M.palette.bright_yellow,
        terminal_color_12 = M.palette.bright_blue,
        terminal_color_13 = M.palette.bright_magenta,
        terminal_color_14 = M.palette.bright_cyan,
        terminal_color_15 = M.palette.bright_white,
    }
end

-- Function to merge user overrides
function M.extend(overrides)
    if overrides.palette then
        M.palette = vim.tbl_deep_extend("force", M.palette, overrides.palette)
    end
    if overrides.semantic then
        M.semantic = vim.tbl_deep_extend("force", M.semantic, overrides.semantic)
    end
    if overrides.terminal then
        M.terminal = vim.tbl_deep_extend("force", M.terminal, overrides.terminal)
    end
end

return M
