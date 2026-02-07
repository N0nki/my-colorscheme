-- my-colorscheme for Neovim

local M = {}

M.config = {
    style = "frost", -- "frost", "vivid", "sunset", "warm"
    transparent = false,
    commentStyle = { italic = true },
    keywordStyle = { italic = false },
    functionStyle = {},
    variableStyle = {},
    terminalColors = true,
    colors = {}, -- Color overrides
}

function M.setup(opts)
    opts = opts or {}
    M.config = vim.tbl_deep_extend("force", M.config, opts)
end

function M.load()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "my-colorscheme"
    vim.o.background = "dark"

    local colors = require("my-colorscheme.colors")

    -- Setup colors with selected style
    colors.setup(M.config.style)

    -- Apply user color overrides
    if M.config.colors then
        colors.extend(M.config.colors)
    end

    local highlights = require("my-colorscheme.highlights")
    highlights.setup(colors, M.config)

    -- Set terminal colors
    if M.config.terminalColors then
        for name, color in pairs(colors.terminal) do
            vim.g[name] = color
        end
    end
end

return M
