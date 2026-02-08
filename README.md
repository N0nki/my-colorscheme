# my-colorscheme

## Installation

### lazy.nvim

```lua
{
    dir = "~/repos/my-colorscheme",
    name = "my-colorscheme",
    lazy = false,
    priority = 1000,
    config = function()
        require("my-colorscheme").setup({
            style = "frost", -- Choose your style
        })
    end,
}
```

## Usage

```lua
-- Apply colorscheme
vim.cmd([[colorscheme my-colorscheme]])
```

## Style Variations

Choose from 8 unique color styles:

| Style      | Description                                      |
| ---------- | ------------------------------------------------ |
| `frost`    | Cyan/Blue emphasis, cool impression (default)    |
| `vivid`    | Higher saturation, stronger contrast             |
| `sunset`   | Orange/Gold accent, warm highlights              |
| `warm`     | Warm background, blue shifted to purple          |
| `pulse`    | Cyberpunk neon pink/cyan aesthetic               |
| `haze`     | Nordic calm + pastel softness                    |
| `dusk`     | Japanese twilight with cherry blossom accent     |
| `deep`     | Balanced colors with purple night accent         |

### Style Previews

#### frost (default)

Cool, icy feel with cyan and sky blue as dominant colors.

#### vivid

Saturated colors with deeper background for maximum contrast.

#### sunset

Warm accents (orange, gold) on a slightly warm base.

#### warm

Cozy warm background with purple-shifted blues.

#### pulse

Cyberpunk aesthetic with neon pink and cyan on deep purple-black background.

#### haze

Nordic calm with pastel softness, like morning mist.

#### dusk

Japanese twilight with cherry blossom pink accents on deep plum background.

#### deep

Balanced colors with purple night accent for focused coding.

## Configuration

```lua
require("my-colorscheme").setup({
    -- Style variation (default: "frost")
    style = "frost", -- frost, vivid, sunset, warm, pulse, haze, dusk, deep

    -- Enable transparent background
    transparent = false,

    -- Style for comments
    commentStyle = { italic = true },

    -- Style for keywords (if, for, while, etc.)
    keywordStyle = { italic = false },

    -- Style for functions
    functionStyle = {},

    -- Style for variables
    variableStyle = {},

    -- Enable terminal colors
    terminalColors = true,

    -- Color overrides (applied after style)
    colors = {
        palette = {
            -- Override base palette colors
            -- red = "#ff0000",
        },
        semantic = {
            -- Override semantic colors
            -- keyword = "#ff00ff",
        },
    },
})
```

## Switching Styles at Runtime

```lua
-- Change to a different style
require("my-colorscheme").setup({ style = "vivid" })
require("my-colorscheme").load()
```

## Color Palette

### Base Colors (frost style)

| Name | Color     | Description        |
| ---- | --------- | ------------------ |
| bg0  | `#141820` | Darkest background |
| bg1  | `#1a2028` | Normal background  |
| bg2  | `#242c38` | Lighter background |
| bg3  | `#384050` | Selection/visual   |
| bg4  | `#445060` | Borders            |
| fg0  | `#608090` | Comments           |
| fg1  | `#7898a8` | Muted text         |
| fg2  | `#98aab8` | Secondary text     |
| fg3  | `#c8d4dc` | Normal text        |
| fg4  | `#e0e8f0` | Bright text        |

### Syntax Colors (frost style)

| Name    | Color     | Usage                |
| ------- | --------- | -------------------- |
| red     | `#d87880` | Errors, HTML tags    |
| green   | `#90c4a0` | Strings, added lines |
| yellow  | `#c8b478` | Warnings, parameters |
| blue    | `#7eb4d8` | Functions, keywords  |
| magenta | `#9090c8` | Numbers, constants   |
| cyan    | `#70c8d0` | Types, strings       |

## Supported Plugins

- nvim-treesitter
- nvim-lspconfig (semantic tokens)
- telescope.nvim
- nvim-cmp
- gitsigns.nvim
- indent-blankline.nvim
- rainbow-delimiters.nvim
- nvim-tree.lua
- trouble.nvim
- noice.nvim
- nvim-notify
- vim-illuminate
- flash.nvim
- nvim-bqf
- render-markdown.nvim

## Customization Examples

### Use Vivid Style with Custom Overrides

```lua
require("my-colorscheme").setup({
    style = "vivid",
    colors = {
        palette = {
            cyan = "#80e0e8", -- Even more cyan
        },
    },
})
```

### Bold Keywords

```lua
require("my-colorscheme").setup({
    keywordStyle = { bold = true },
})
```

### No Italic Comments

```lua
require("my-colorscheme").setup({
    commentStyle = { italic = false },
})
```

### Transparent Background

```lua
require("my-colorscheme").setup({
    transparent = true,
})
```

## File Structure

```
lua/my-colorscheme/
├── init.lua           # Main entry, setup(), load()
├── colors.lua         # Palette loader & semantic mapping
├── highlights.lua     # Highlight group definitions
└── palettes/          # Style variations
    ├── frost.lua
    ├── vivid.lua
    ├── sunset.lua
    └── warm.lua
```

## License

MIT
