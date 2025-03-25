--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial




local lush = require('lush')
local hsl = lush.hsl

local red = hsl('#e24673')
local yellow = hsl('#ffd543')
local blue = hsl('#39c5bb')

local white = hsl('#ffffff')
local black = hsl('#323232')
local gray = hsl('#cccccc')

local gray_comment = hsl('#aaaaaa')

local gray_cursorline = hsl('#eeeeee')
local gray_linenr = gray
local gray_colorcolumn = hsl('#f8f8f8')

local gray_float = hsl('#eeeeee')
local gray_pmenuthumb = gray

local gray_split = black
local gray_termcursornc = gray

local gray_statusline = hsl('#dddddd')
local gray_statuslinenc = hsl('#eeeeee')
local gray_tabline = hsl('#dddddd')
local gray_tablinefill = gray_tabline





---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {

    Comment        { fg = gray_comment }, -- Any comment

    Constant       { fg = yellow.darken(25) }, -- (*) Any constant
    String         { Constant }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier     { fg = blue }, -- (*) Any variable name
    Function       { Identifier }, --   Function name (also: methods for classes)

    Statement      { fg = red }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    Operator       { fg = red }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    PreProc        { Statement }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = blue }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        { fg = blue }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    Delimiter      { fg = black }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    Underlined     { fg = blue, gui = "underline" }, -- Text that stands out, HTML links
    Ignore         { fg = black }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { bg = red, fg = black, gui = 'bold' }, -- Any erroneous construct
    Todo           { fg = black, gui = 'bold' }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    MatchParen     { bg = yellow, fg = black, gui = 'bold italic' },
    WarningMsg     { bg = yellow, fg = black, gui = 'bold' },
    WhiteSpace     { fg = black },


    Normal         { bg = white, fg = black },
    Title          { fg = black, gui = 'bold' },

    CursorLine     { bg = gray_cursorline },
    CursorColumn   { CursorLine },

    LineNr         { fg = gray_linenr },
    LineNrAbove    { LineNr },
    LineNrBelow    { LineNr },
    EndOfBuffer    { LineNr },
    CursorLineNr   { fg = blue, gui = 'bold' },
    SignColumn     { LineNr },
    CursorLineSign { LineNr },

    Winseparator   { fg = gray_split },
    VertSplit      { Winseparator },
    ColorColumn    { bg = gray_colorcolumn },

    Cursor         { bg = blue, fg = black },
    lCursor        { Cursor },
    TermCursor     { Cursor },
    TermCursorNC   { bg = gray_termcursornc, fg = black },

    Folded         { bg = gray_split, fg = white },
    FoldColumn     { Folded },

    Conceal        { Comment },

    WildMenu       { bg = blue, fg = black },
    WinBar         { Title },
    WinBarNC      { fg = black },

    Question       { fg = blue },
    QuickFixLine   { fg = blue },

    SpecialKey     { fg = red, gui = 'italic underline' },
    SpellBad       { SpecialKey },
    SpellCap       { SpecialKey },
    SpellLocal     { SpecialKey },
    SpellRare      { SpecialKey },

    StatusLine     { bg = gray_statusline, fg = black }, -- Status line of current window
    StatusLineNC   { bg = gray_statuslinenc, fg = white }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine        { bg = gray_tabline, fg = gray_comment }, -- Tab pages line, not active tab page label
    TabLineFill    { bg = gray_tablinefill }, -- Tab pages line, where there are no labels
    TabLineSel     { bg = white, fg = black, gui = 'bold' }, -- Tab pages line, active tab page label

    -- NormalNC       { }, -- normal text in non-current windows


    NormalFloat    { bg = gray_float, fg = black },
    FloatBorder    { NormalFloat },
    FloatTitle     { Title },
    Pmenu          { NormalFloat },
    PmenuSel       { bg = blue, fg = black },
    PmenuThumb     { bg = gray_pmenuthumb },
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.


    Directory      { fg = blue },
    Added          { bg = blue, fg = black },
    Changed        { bg = yellow, fg = black },
    Removed        { bg = red, fg = black },
    DiffAdd        { Added },
    DiffChange     { Changed },
    DiffText       { DiffChange },
    DiffDelete     { Removed },
    ErrorMsg       { Error },


    ModeMsg        { fg = red },
    MsgArea        { fg = black },
    MsgSeparator   { MsgArea },
    MoreMsg        { MsgArea },
    NonText        { Comment },

    Visual         { bg = blue, fg = black },
    VisualNOS      { bg = yellow, fg = black }, -- Visual mode selection when vim is "Not Owning the Selection".

    Search         { bg = yellow, fg = black, gui = 'italic' },
    CurSearch      { bg = red, fg = black, gui = 'bold italic' },


    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.


    DiagnosticError            { Error } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { WarningMsg } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = blue, gui = 'italic' } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = blue, gui = 'italic' } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = blue } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError   { DiagnosticError, gui = 'bold underline' } , -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { DiagnosticWarn, gui = 'bold underline' } , -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { DiagnosticInfo, gui = 'underline italic' } , -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { DiagnosticHint, gui = 'underline italic' } , -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk      { DiagnosticOk, gui = 'underline' } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.


    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    sym"@variable"          { fg = black }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag


    RedrawDebugClear { bg = yellow, fg = black },
    RedrawDebugComposed { bg = blue, fg = black },
    RedrawDebugRecompose { bg = red, fg = black },
    NvimInternalError { bg = red, fg = red },



}
end)

return theme

-- vi:nowrap
