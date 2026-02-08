local M = {}

local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

function M.setup(colors, opts)
    local c = colors.semantic
    local p = colors.palette

    -- Options
    local transparent = opts.transparent or false
    local comment_style = opts.commentStyle or { italic = true }
    local keyword_style = opts.keywordStyle or { italic = false }
    local function_style = opts.functionStyle or {}
    local variable_style = opts.variableStyle or {}

    -- Background handling for transparency
    local bg = transparent and "NONE" or c.bg
    local bg_dark = transparent and "NONE" or c.bg_dark
    local bg_popup = transparent and "NONE" or c.bg_popup
    local bg_sidebar = transparent and "NONE" or c.bg_sidebar
    local bg_float = transparent and "NONE" or c.bg_float

    ---------------------------------------------------------------------------
    -- Editor
    ---------------------------------------------------------------------------
    hl("Normal", { fg = c.fg, bg = bg })
    hl("NormalNC", { fg = c.fg, bg = bg })
    hl("NormalFloat", { fg = c.fg, bg = bg_float })
    hl("NormalSB", { fg = c.fg_dark, bg = bg_sidebar })
    hl("SignColumn", { fg = c.fg_gutter, bg = bg })
    hl("SignColumnSB", { fg = c.fg_gutter, bg = bg_sidebar })
    hl("MsgArea", { fg = c.fg, bg = bg })
    hl("ModeMsg", { fg = c.fg, bold = true })
    hl("MoreMsg", { fg = p.blue })
    hl("MsgSeparator", { fg = c.border, bg = bg })

    hl("Cursor", { fg = c.bg, bg = c.cursor })
    hl("lCursor", { fg = c.bg, bg = c.cursor })
    hl("CursorIM", { fg = c.bg, bg = c.cursor })
    hl("TermCursor", { fg = c.bg, bg = c.cursor })
    hl("TermCursorNC", { fg = c.bg, bg = c.cursor })

    hl("CursorLine", { bg = c.cursor_line })
    hl("CursorLineNr", { fg = p.yellow, bg = c.cursor_line, bold = true })
    hl("CursorColumn", { bg = c.cursor_line })
    hl("ColorColumn", { bg = c.cursor_line })

    hl("LineNr", { fg = c.fg_gutter })
    hl("LineNrAbove", { fg = c.fg_gutter })
    hl("LineNrBelow", { fg = c.fg_gutter })

    hl("Conceal", { fg = c.fg_dark })
    hl("NonText", { fg = c.fg_gutter })
    hl("SpecialKey", { fg = c.fg_gutter })
    hl("Whitespace", { fg = c.fg_gutter })
    hl("EndOfBuffer", { fg = c.bg })

    hl("MatchParen", { fg = p.yellow, bold = true })

    hl("Folded", { fg = c.comment, bg = c.cursor_line })
    hl("FoldColumn", { fg = c.fg_gutter, bg = bg })

    hl("Visual", { bg = c.bg_visual })
    hl("VisualNOS", { bg = c.bg_visual })

    hl("Search", { fg = c.bg, bg = c.bg_search })
    hl("IncSearch", { fg = c.bg, bg = p.orange })
    hl("Substitute", { fg = c.bg, bg = p.red })
    hl("CurSearch", { link = "IncSearch" })

    hl("QuickFixLine", { bg = c.bg_visual, bold = true })
    hl("qfLineNr", { fg = p.yellow })
    hl("qfFileName", { fg = p.blue })

    hl("Directory", { fg = p.blue })
    hl("Title", { fg = p.blue, bold = true })

    hl("WildMenu", { fg = c.bg, bg = p.blue })
    hl("StatusLine", { fg = c.fg, bg = c.bg_statusline })
    hl("StatusLineNC", { fg = c.fg_dark, bg = c.bg_statusline })
    hl("TabLine", { fg = c.fg_dark, bg = c.bg_statusline })
    hl("TabLineFill", { bg = c.bg_statusline })
    hl("TabLineSel", { fg = c.fg, bg = bg })
    hl("WinBar", { fg = c.fg, bg = bg })
    hl("WinBarNC", { fg = c.fg_dark, bg = bg })
    hl("WinSeparator", { fg = c.border, bg = bg })
    hl("VertSplit", { fg = c.border })

    hl("Pmenu", { fg = c.fg, bg = bg_popup })
    hl("PmenuSel", { fg = c.bg, bg = p.blue })
    hl("PmenuSbar", { bg = c.bg_highlight })
    hl("PmenuThumb", { bg = c.fg_gutter })
    hl("PmenuKind", { fg = p.purple, bg = bg_popup })
    hl("PmenuKindSel", { fg = p.purple, bg = p.blue })
    hl("PmenuExtra", { fg = c.fg_dark, bg = bg_popup })
    hl("PmenuExtraSel", { fg = c.bg, bg = p.blue })

    hl("FloatBorder", { fg = c.border, bg = bg_float })
    hl("FloatTitle", { fg = p.blue, bg = bg_float, bold = true })

    hl("SpellBad", { sp = c.diag_error, undercurl = true })
    hl("SpellCap", { sp = c.diag_warn, undercurl = true })
    hl("SpellLocal", { sp = c.diag_info, undercurl = true })
    hl("SpellRare", { sp = c.diag_hint, undercurl = true })

    ---------------------------------------------------------------------------
    -- Syntax
    ---------------------------------------------------------------------------
    hl("Comment", vim.tbl_extend("force", { fg = c.comment }, comment_style))

    hl("Constant", { fg = c.constant })
    hl("String", { fg = c.string })
    hl("Character", { fg = c.character })
    hl("Number", { fg = c.number })
    hl("Boolean", { fg = c.boolean })
    hl("Float", { fg = c.number })

    hl("Identifier", vim.tbl_extend("force", { fg = c.identifier }, variable_style))
    hl("Function", vim.tbl_extend("force", { fg = c.func }, function_style))

    hl("Statement", vim.tbl_extend("force", { fg = c.statement }, keyword_style))
    hl("Conditional", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))
    hl("Repeat", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))
    hl("Label", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))
    hl("Operator", { fg = c.operator })
    hl("Keyword", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))
    hl("Exception", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))

    hl("PreProc", { fg = c.preproc })
    hl("Include", { fg = c.preproc })
    hl("Define", { fg = c.preproc })
    hl("Macro", { fg = c.preproc })
    hl("PreCondit", { fg = c.preproc })

    hl("Type", { fg = c.type })
    hl("StorageClass", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))
    hl("Structure", { fg = c.type })
    hl("Typedef", { fg = c.type })

    hl("Special", { fg = c.special })
    hl("SpecialChar", { fg = c.special })
    hl("Tag", { fg = p.yellow })
    hl("Delimiter", { fg = c.delimiter })
    hl("SpecialComment", { fg = c.special })
    hl("Debug", { fg = c.special })

    hl("Underlined", { fg = p.blue, underline = true })
    hl("Bold", { bold = true })
    hl("Italic", { italic = true })
    hl("Ignore", { fg = c.bg })
    hl("Error", { fg = c.diag_error })
    hl("Todo", { fg = c.bg, bg = p.yellow, bold = true })

    ---------------------------------------------------------------------------
    -- Diff
    ---------------------------------------------------------------------------
    hl("DiffAdd", { bg = c.diff_add })
    hl("DiffChange", { bg = c.diff_change })
    hl("DiffDelete", { fg = p.red, bg = c.diff_delete })
    hl("DiffText", { bg = c.diff_text })
    hl("diffAdded", { fg = c.git_add })
    hl("diffRemoved", { fg = c.git_delete })
    hl("diffChanged", { fg = c.git_change })
    hl("diffOldFile", { fg = p.yellow })
    hl("diffNewFile", { fg = p.orange })
    hl("diffFile", { fg = p.blue })
    hl("diffLine", { fg = c.comment })
    hl("diffIndexLine", { fg = p.magenta })

    ---------------------------------------------------------------------------
    -- Diagnostics
    ---------------------------------------------------------------------------
    hl("DiagnosticError", { fg = c.diag_error })
    hl("DiagnosticWarn", { fg = c.diag_warn })
    hl("DiagnosticInfo", { fg = c.diag_info })
    hl("DiagnosticHint", { fg = c.diag_hint })
    hl("DiagnosticOk", { fg = c.git_add })

    hl("DiagnosticVirtualTextError", { fg = c.diag_error, bg = bg })
    hl("DiagnosticVirtualTextWarn", { fg = c.diag_warn, bg = bg })
    hl("DiagnosticVirtualTextInfo", { fg = c.diag_info, bg = bg })
    hl("DiagnosticVirtualTextHint", { fg = c.diag_hint, bg = bg })

    hl("DiagnosticUnderlineError", { sp = c.diag_error, undercurl = true })
    hl("DiagnosticUnderlineWarn", { sp = c.diag_warn, undercurl = true })
    hl("DiagnosticUnderlineInfo", { sp = c.diag_info, undercurl = true })
    hl("DiagnosticUnderlineHint", { sp = c.diag_hint, undercurl = true })

    hl("DiagnosticFloatingError", { fg = c.diag_error })
    hl("DiagnosticFloatingWarn", { fg = c.diag_warn })
    hl("DiagnosticFloatingInfo", { fg = c.diag_info })
    hl("DiagnosticFloatingHint", { fg = c.diag_hint })

    hl("DiagnosticSignError", { fg = c.diag_error })
    hl("DiagnosticSignWarn", { fg = c.diag_warn })
    hl("DiagnosticSignInfo", { fg = c.diag_info })
    hl("DiagnosticSignHint", { fg = c.diag_hint })

    ---------------------------------------------------------------------------
    -- Treesitter
    ---------------------------------------------------------------------------
    -- Identifiers
    hl("@variable", vim.tbl_extend("force", { fg = c.variable }, variable_style))
    hl("@variable.builtin", { fg = p.red })
    hl("@variable.parameter", { fg = c.parameter })
    hl("@variable.member", { fg = c.field })

    hl("@constant", { fg = c.constant })
    hl("@constant.builtin", { fg = c.constant })
    hl("@constant.macro", { fg = c.constant })

    hl("@module", { fg = p.blue })
    hl("@module.builtin", { fg = p.blue })
    hl("@label", { fg = p.blue })

    -- Literals
    hl("@string", { fg = c.string })
    hl("@string.documentation", { fg = c.string })
    hl("@string.regexp", { fg = p.cyan })
    hl("@string.escape", { fg = p.magenta })
    hl("@string.special", { fg = c.special })
    hl("@string.special.symbol", { fg = p.cyan })
    hl("@string.special.url", { fg = p.blue, underline = true })

    hl("@character", { fg = c.character })
    hl("@character.special", { fg = c.special })

    hl("@boolean", { fg = c.boolean })
    hl("@number", { fg = c.number })
    hl("@number.float", { fg = c.number })

    -- Types
    hl("@type", { fg = c.type })
    hl("@type.builtin", { fg = c.type })
    hl("@type.definition", { fg = c.type })
    hl("@type.qualifier", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))

    hl("@attribute", { fg = p.yellow })
    hl("@property", { fg = c.property })

    -- Functions
    hl("@function", vim.tbl_extend("force", { fg = c.func }, function_style))
    hl("@function.builtin", vim.tbl_extend("force", { fg = c.func }, function_style))
    hl("@function.call", vim.tbl_extend("force", { fg = c.func }, function_style))
    hl("@function.macro", { fg = c.preproc })
    hl("@function.method", vim.tbl_extend("force", { fg = c.func }, function_style))
    hl("@function.method.call", vim.tbl_extend("force", { fg = c.func }, function_style))

    hl("@constructor", { fg = c.type })

    -- Keywords
    hl("@keyword", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))
    hl("@keyword.conditional", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))
    hl("@keyword.coroutine", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))
    hl("@keyword.debug", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))
    hl("@keyword.directive", { fg = c.preproc })
    hl("@keyword.directive.define", { fg = c.preproc })
    hl("@keyword.exception", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))
    hl("@keyword.function", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))
    hl("@keyword.import", { fg = c.preproc })
    hl("@keyword.operator", { fg = c.keyword })
    hl("@keyword.repeat", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))
    hl("@keyword.return", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))
    hl("@keyword.storage", vim.tbl_extend("force", { fg = c.keyword }, keyword_style))

    -- Punctuation
    hl("@punctuation.bracket", { fg = c.delimiter })
    hl("@punctuation.delimiter", { fg = c.delimiter })
    hl("@punctuation.special", { fg = c.special })

    -- Comments
    hl("@comment", vim.tbl_extend("force", { fg = c.comment }, comment_style))
    hl("@comment.documentation", vim.tbl_extend("force", { fg = c.comment }, comment_style))
    hl("@comment.error", { fg = c.diag_error })
    hl("@comment.warning", { fg = c.diag_warn })
    hl("@comment.todo", { fg = c.bg, bg = p.yellow })
    hl("@comment.note", { fg = c.diag_hint })

    -- Markup
    hl("@markup.strong", { bold = true })
    hl("@markup.italic", { italic = true })
    hl("@markup.strikethrough", { strikethrough = true })
    hl("@markup.underline", { underline = true })
    hl("@markup.heading", { fg = p.blue, bold = true })
    hl("@markup.quote", { fg = c.comment, italic = true })
    hl("@markup.math", { fg = p.cyan })
    hl("@markup.environment", { fg = p.magenta })
    hl("@markup.link", { fg = p.blue })
    hl("@markup.link.label", { fg = p.cyan })
    hl("@markup.link.url", { fg = p.blue, underline = true })
    hl("@markup.raw", { fg = c.string })
    hl("@markup.raw.block", { fg = c.fg })
    hl("@markup.list", { fg = c.special })
    hl("@markup.list.checked", { fg = c.git_add })
    hl("@markup.list.unchecked", { fg = c.fg_dark })

    -- Tags (HTML/JSX)
    hl("@tag", { fg = p.red })
    hl("@tag.attribute", { fg = p.yellow })
    hl("@tag.delimiter", { fg = c.delimiter })

    -- Misc
    hl("@diff.plus", { fg = c.git_add })
    hl("@diff.minus", { fg = c.git_delete })
    hl("@diff.delta", { fg = c.git_change })

    ---------------------------------------------------------------------------
    -- LSP Semantic Tokens
    ---------------------------------------------------------------------------
    hl("@lsp.type.class", { link = "@type" })
    hl("@lsp.type.comment", { link = "@comment" })
    hl("@lsp.type.decorator", { link = "@attribute" })
    hl("@lsp.type.enum", { link = "@type" })
    hl("@lsp.type.enumMember", { link = "@constant" })
    hl("@lsp.type.event", { link = "@type" })
    hl("@lsp.type.function", { link = "@function" })
    hl("@lsp.type.interface", { link = "@type" })
    hl("@lsp.type.keyword", { link = "@keyword" })
    hl("@lsp.type.macro", { link = "@function.macro" })
    hl("@lsp.type.method", { link = "@function.method" })
    hl("@lsp.type.modifier", { link = "@type.qualifier" })
    hl("@lsp.type.namespace", { link = "@module" })
    hl("@lsp.type.number", { link = "@number" })
    hl("@lsp.type.operator", { link = "@operator" })
    hl("@lsp.type.parameter", { link = "@variable.parameter" })
    hl("@lsp.type.property", { link = "@property" })
    hl("@lsp.type.regexp", { link = "@string.regexp" })
    hl("@lsp.type.string", { link = "@string" })
    hl("@lsp.type.struct", { link = "@type" })
    hl("@lsp.type.type", { link = "@type" })
    hl("@lsp.type.typeParameter", { link = "@type" })
    hl("@lsp.type.variable", { link = "@variable" })

    hl("@lsp.mod.defaultLibrary", { fg = p.cyan })
    hl("@lsp.mod.deprecated", { strikethrough = true })
    hl("@lsp.mod.readonly", { fg = c.constant })

    hl("@lsp.typemod.function.defaultLibrary", { fg = p.cyan })
    hl("@lsp.typemod.variable.defaultLibrary", { fg = p.red })
    hl("@lsp.typemod.variable.readonly", { fg = c.constant })

    -- LspReference
    hl("LspReferenceText", { bg = c.bg_highlight })
    hl("LspReferenceRead", { bg = c.bg_highlight })
    hl("LspReferenceWrite", { bg = c.bg_highlight })

    hl("LspSignatureActiveParameter", { fg = p.orange, bold = true })
    hl("LspCodeLens", { fg = c.comment })
    hl("LspInlayHint", { fg = c.fg_gutter, bg = c.cursor_line })

    ---------------------------------------------------------------------------
    -- Plugins
    ---------------------------------------------------------------------------

    -- Telescope
    hl("TelescopeBorder", { fg = c.border, bg = bg_float })
    hl("TelescopeNormal", { fg = c.fg, bg = bg_float })
    hl("TelescopePromptNormal", { fg = c.fg, bg = bg_float })
    hl("TelescopePromptBorder", { fg = c.border, bg = bg_float })
    hl("TelescopePromptTitle", { fg = p.blue, bold = true })
    hl("TelescopePreviewTitle", { fg = p.green, bold = true })
    hl("TelescopeResultsTitle", { fg = p.yellow, bold = true })
    hl("TelescopeSelection", { fg = c.fg, bg = c.bg_visual })
    hl("TelescopeSelectionCaret", { fg = p.blue, bg = c.bg_visual })
    hl("TelescopeMultiSelection", { fg = p.cyan })
    hl("TelescopeMatching", { fg = p.orange, bold = true })
    hl("TelescopePromptPrefix", { fg = p.blue })

    -- nvim-cmp
    hl("CmpItemAbbr", { fg = c.fg })
    hl("CmpItemAbbrDeprecated", { fg = c.fg_gutter, strikethrough = true })
    hl("CmpItemAbbrMatch", { fg = p.blue, bold = true })
    hl("CmpItemAbbrMatchFuzzy", { fg = p.blue, bold = true })
    hl("CmpItemMenu", { fg = c.comment })
    hl("CmpItemKindDefault", { fg = c.fg_dark })

    hl("CmpItemKindKeyword", { fg = p.blue })
    hl("CmpItemKindVariable", { fg = p.magenta })
    hl("CmpItemKindConstant", { fg = p.magenta })
    hl("CmpItemKindReference", { fg = p.magenta })
    hl("CmpItemKindValue", { fg = p.magenta })

    hl("CmpItemKindFunction", { fg = p.blue })
    hl("CmpItemKindMethod", { fg = p.blue })
    hl("CmpItemKindConstructor", { fg = p.blue })

    hl("CmpItemKindClass", { fg = p.cyan })
    hl("CmpItemKindInterface", { fg = p.cyan })
    hl("CmpItemKindStruct", { fg = p.cyan })
    hl("CmpItemKindEvent", { fg = p.cyan })
    hl("CmpItemKindEnum", { fg = p.cyan })
    hl("CmpItemKindUnit", { fg = p.cyan })

    hl("CmpItemKindModule", { fg = p.yellow })
    hl("CmpItemKindProperty", { fg = p.green })
    hl("CmpItemKindField", { fg = p.green })
    hl("CmpItemKindTypeParameter", { fg = p.green })
    hl("CmpItemKindEnumMember", { fg = p.green })
    hl("CmpItemKindOperator", { fg = p.green })
    hl("CmpItemKindSnippet", { fg = p.orange })

    hl("CmpItemKindText", { fg = c.fg })
    hl("CmpItemKindFile", { fg = c.fg })
    hl("CmpItemKindFolder", { fg = c.fg })
    hl("CmpItemKindColor", { fg = c.fg })

    -- gitsigns
    hl("GitSignsAdd", { fg = c.git_signs_add })
    hl("GitSignsChange", { fg = c.git_signs_change })
    hl("GitSignsDelete", { fg = c.git_signs_delete })
    hl("GitSignsCurrentLineBlame", { fg = c.comment })

    -- indent-blankline
    hl("IblIndent", { fg = c.bg_highlight })
    hl("IblWhitespace", { fg = c.bg_highlight })
    hl("IblScope", { fg = c.border })
    hl("IndentBlanklineChar", { fg = c.bg_highlight })
    hl("IndentBlanklineSpaceChar", { fg = c.bg_highlight })
    hl("IndentBlanklineContextChar", { fg = c.border })

    -- rainbow-delimiters
    hl("RainbowDelimiterRed", { fg = p.red })
    hl("RainbowDelimiterYellow", { fg = p.yellow })
    hl("RainbowDelimiterBlue", { fg = p.blue })
    hl("RainbowDelimiterOrange", { fg = p.orange })
    hl("RainbowDelimiterGreen", { fg = p.green })
    hl("RainbowDelimiterViolet", { fg = p.magenta })
    hl("RainbowDelimiterCyan", { fg = p.cyan })

    -- nvim-tree
    hl("NvimTreeNormal", { fg = c.fg, bg = bg_sidebar })
    hl("NvimTreeNormalNC", { fg = c.fg, bg = bg_sidebar })
    hl("NvimTreeRootFolder", { fg = p.blue, bold = true })
    hl("NvimTreeFolderIcon", { fg = p.blue })
    hl("NvimTreeFolderName", { fg = p.blue })
    hl("NvimTreeOpenedFolderName", { fg = p.blue, bold = true })
    hl("NvimTreeClosedFolderName", { fg = p.blue })
    hl("NvimTreeEmptyFolderName", { fg = c.comment })
    hl("NvimTreeIndentMarker", { fg = c.bg_highlight })
    hl("NvimTreeSymlink", { fg = p.cyan })
    hl("NvimTreeSpecialFile", { fg = p.yellow })
    hl("NvimTreeExecFile", { fg = p.green })
    hl("NvimTreeImageFile", { fg = p.magenta })
    hl("NvimTreeGitDirty", { fg = c.git_change })
    hl("NvimTreeGitNew", { fg = c.git_add })
    hl("NvimTreeGitDeleted", { fg = c.git_delete })
    hl("NvimTreeGitStaged", { fg = c.git_add })
    hl("NvimTreeGitMerge", { fg = p.orange })
    hl("NvimTreeGitRenamed", { fg = p.purple })
    hl("NvimTreeGitIgnored", { fg = c.comment })
    hl("NvimTreeVertSplit", { fg = c.bg, bg = c.bg })
    hl("NvimTreeOpenedFile", { fg = p.cyan, italic = true })
    hl("NvimTreeModifiedFile", { fg = c.git_change })
    hl("NvimTreeWindowPicker", { fg = c.bg, bg = p.blue, bold = true })

    -- Trouble
    hl("TroubleNormal", { fg = c.fg, bg = bg_sidebar })
    hl("TroubleText", { fg = c.fg })
    hl("TroubleCount", { fg = p.magenta, bg = c.bg_highlight })
    hl("TroubleLocation", { fg = c.comment })

    -- noice
    hl("NoiceCmdline", { fg = c.fg })
    hl("NoiceCmdlineIcon", { fg = p.blue })
    hl("NoiceCmdlineIconSearch", { fg = p.yellow })
    hl("NoiceCmdlinePopup", { fg = c.fg, bg = bg_popup })
    hl("NoiceCmdlinePopupBorder", { fg = c.border })
    hl("NoiceConfirm", { fg = c.fg, bg = bg_popup })
    hl("NoiceConfirmBorder", { fg = c.border })
    hl("NoiceMini", { fg = c.fg, bg = c.bg_statusline })

    -- lualine (handled by lualine theme, but provide base)
    hl("lualine_b_normal", { fg = c.fg, bg = c.bg_highlight })
    hl("lualine_c_normal", { fg = c.fg, bg = c.bg_statusline })

    -- notify
    hl("NotifyERRORBorder", { fg = c.diag_error })
    hl("NotifyWARNBorder", { fg = c.diag_warn })
    hl("NotifyINFOBorder", { fg = c.diag_info })
    hl("NotifyDEBUGBorder", { fg = c.comment })
    hl("NotifyTRACEBorder", { fg = p.magenta })
    hl("NotifyERRORIcon", { fg = c.diag_error })
    hl("NotifyWARNIcon", { fg = c.diag_warn })
    hl("NotifyINFOIcon", { fg = c.diag_info })
    hl("NotifyDEBUGIcon", { fg = c.comment })
    hl("NotifyTRACEIcon", { fg = p.magenta })
    hl("NotifyERRORTitle", { fg = c.diag_error })
    hl("NotifyWARNTitle", { fg = c.diag_warn })
    hl("NotifyINFOTitle", { fg = c.diag_info })
    hl("NotifyDEBUGTitle", { fg = c.comment })
    hl("NotifyTRACETitle", { fg = p.magenta })

    -- vim-illuminate
    hl("IlluminatedWordText", { bg = c.bg_highlight })
    hl("IlluminatedWordRead", { bg = c.bg_highlight })
    hl("IlluminatedWordWrite", { bg = c.bg_highlight })

    -- flash.nvim
    hl("FlashBackdrop", { fg = c.comment })
    hl("FlashCurrent", { fg = c.bg, bg = p.cyan })
    hl("FlashLabel", { fg = c.bg, bg = p.magenta, bold = true })
    hl("FlashMatch", { fg = c.bg, bg = p.green })
    hl("FlashCursor", { reverse = true })

    -- nvim-bqf
    hl("BqfPreviewBorder", { fg = c.border })
    hl("BqfPreviewTitle", { fg = p.blue, bold = true })
    hl("BqfPreviewThumb", { bg = c.fg_gutter })

    -- render-markdown
    hl("RenderMarkdownH1Bg", { bg = c.bg_highlight })
    hl("RenderMarkdownH2Bg", { bg = c.bg_highlight })
    hl("RenderMarkdownH3Bg", { bg = c.bg_highlight })
    hl("RenderMarkdownCode", { bg = c.bg_dark })

    -- Markdown (vim-markdown, mkd)
    hl("mkdLink", { fg = p.blue, underline = true })
    hl("mkdLineBreak", {})
    hl("mkdHeading", { fg = c.fg })
    hl("mkdInlineURL", { fg = p.blue, underline = true })
    hl("mkdEscape", { fg = c.delimiter })
    hl("markdownUrl", { fg = p.blue, underline = true })
    hl("markdownCode", { fg = p.orange })
    hl("markdownCodeBlock", { fg = p.green })
    hl("markdownLinkTextDelimiter", { fg = c.delimiter })
    hl("markdownLinkDelimiter", { fg = c.delimiter })
    hl("markdownIdDelimiter", { fg = c.delimiter })
    hl("markdownLinkText", { fg = p.cyan })
    hl("markdownItalic", { italic = true })
    hl("markdownBold", { bold = true })
    hl("markdownBoldItalic", { bold = true, italic = true })

    -- HTML
    hl("htmlH1", { fg = p.blue, bold = true })
    hl("htmlH2", { fg = p.blue, bold = true })
    hl("htmlH3", { fg = p.blue, bold = true })
    hl("htmlH4", { fg = p.blue, bold = true })
    hl("htmlH5", { fg = p.blue, bold = true })
    hl("htmlH6", { fg = p.blue, bold = true })
    hl("htmlTag", { fg = c.delimiter })
    hl("htmlEndTag", { fg = c.delimiter })
    hl("htmlTagName", { fg = p.red })
    hl("htmlArg", { fg = p.yellow })
    hl("htmlSpecialChar", { fg = p.orange })

    -- diffview.nvim
    hl("DiffviewNormal", { fg = c.fg, bg = bg_sidebar })
    hl("DiffviewVertSplit", { fg = c.bg, bg = c.bg })
    hl("DiffviewStatusAdded", { fg = c.git_add })
    hl("DiffviewStatusModified", { fg = c.git_change })
    hl("DiffviewStatusRenamed", { fg = c.git_change })
    hl("DiffviewStatusDeleted", { fg = c.git_delete })
    hl("DiffviewFilePanelInsertion", { fg = c.git_add })
    hl("DiffviewFilePanelDeletion", { fg = c.git_delete })
    hl("DiffviewFilePanelTitle", { fg = p.blue, bold = true })
    hl("DiffviewFilePanelCounter", { fg = p.magenta })
    hl("DiffviewFilePanelFileName", { fg = c.fg })

    -- TabLine diagnostics
    hl("TabLineError", { fg = c.diag_error })
    hl("TabLineWarning", { fg = c.diag_warn })
    hl("TabLineHint", { fg = c.diag_hint })
    hl("TabLineInformation", { fg = c.diag_info })

    -- which-key.nvim
    hl("WhichKey", { fg = p.cyan })
    hl("WhichKeyGroup", { fg = p.blue })
    hl("WhichKeyDesc", { fg = c.fg })
    hl("WhichKeySeparator", { fg = c.comment })
    hl("WhichKeyFloat", { bg = bg_float })
    hl("WhichKeyBorder", { fg = c.border, bg = bg_float })
    hl("WhichKeyValue", { fg = c.comment })

    -- hop.nvim
    hl("HopNextKey", { fg = "#ff007c", bold = true })
    hl("HopNextKey1", { fg = "#00dfff", bold = true })
    hl("HopNextKey2", { fg = "#2b8db3" })
    hl("HopUnmatched", { fg = c.comment })

    -- LSP additional
    hl("LspCodeLensSeparator", { fg = c.comment })

    -- StatusLine additional
    hl("StatusLineAccent", { fg = c.fg, bg = c.bg_statusline, bold = true })
end

return M
