local bufferline = require 'kaolin-blossom.integrations.bufferline'
local cmp = require 'kaolin-blossom.integrations.cmp'

local kaolin_blossom = require 'kaolin-blossom.colorscheme'
local ansi_colours = kaolin_blossom.ansi
local colorscheme = kaolin_blossom.roles

local config = require 'kaolin-blossom.config'
local utils = require 'kaolin-blossom.utils'
local theme = {}

local function set_terminal_colors()
  vim.g.terminal_color_0 = ansi_colours.black
  vim.g.terminal_color_1 = ansi_colours.red
  vim.g.terminal_color_2 = ansi_colours.green
  vim.g.terminal_color_3 = ansi_colours.yellow
  vim.g.terminal_color_4 = ansi_colours.blue
  vim.g.terminal_color_5 = ansi_colours.purple
  vim.g.terminal_color_6 = ansi_colours.cyan
  vim.g.terminal_color_7 = ansi_colours.white
  vim.g.terminal_color_8 = ansi_colours.brightBlack
  vim.g.terminal_color_9 = ansi_colours.brightRed
  vim.g.terminal_color_10 = ansi_colours.brightGreen
  vim.g.terminal_color_11 = ansi_colours.brightYellow
  vim.g.terminal_color_12 = ansi_colours.brightBlue
  vim.g.terminal_color_13 = ansi_colours.brightPurple
  vim.g.terminal_color_14 = ansi_colours.brightCyan
  vim.g.terminal_color_15 = ansi_colours.brightWhite
  vim.g.terminal_color_background = colorscheme.bg
  vim.g.terminal_color_foreground = colorscheme.fg
end

local function set_groups()
  local bg = config.transparent and 'NONE' or colorscheme.bg
  local diff_add =
    utils.shade(colorscheme.diffAdd, 0.5, colorscheme.bg)
  local diff_delete =
    utils.shade(colorscheme.diffDelete, 0.5, colorscheme.bg)
  local diff_change =
    utils.shade(colorscheme.diffChange, 0.5, colorscheme.bg)
  local diff_text =
    utils.shade(colorscheme.diffText, 0.5, colorscheme.bg)

  local groups = {
    -- base
    Normal = { fg = colorscheme.fg, bg = bg },
    LineNr = { fg = colorscheme.lineNumber },
    ColorColumn = {
      bg = utils.shade(colorscheme.column, 0.5, colorscheme.bg),
    },
    Conceal = {},
    Cursor = { fg = colorscheme.bg, bg = colorscheme.fg },
    lCursor = { link = 'Cursor' },
    CursorIM = { link = 'Cursor' },
    CursorLine = { bg = colorscheme.bgHighlight },
    CursorColumn = { link = 'CursorLine' },
    Directory = { fg = colorscheme.accent },
    DiffAdd = { bg = bg, fg = diff_add },
    DiffChange = { bg = bg, fg = diff_change },
    DiffDelete = { bg = bg, fg = diff_delete },
    DiffText = { bg = bg, fg = diff_text },
    EndOfBuffer = { fg = colorscheme.definition },
    TermCursor = { link = 'Cursor' },
    TermCursorNC = { link = 'Cursor' },
    ErrorMsg = { fg = colorscheme.err },
    VertSplit = { fg = colorscheme.border, bg = bg },
    Winseparator = { link = 'VertSplit' },
    SignColumn = { link = 'Normal' },
    Folded = { fg = colorscheme.fg, bg = colorscheme.bgHighlight },
    FoldColumn = { link = 'SignColumn' },
    IncSearch = {
      bg = utils.mix(
        colorscheme.numericAccent,
        colorscheme.bg,
        math.abs(0.30)
      ),
      fg = colorscheme.bg,
    },
    Substitute = { link = 'IncSearch' },
    CursorLineNr = { fg = colorscheme.numericAccent },
    MatchParen = { fg = colorscheme.keyword, bg = bg },
    ModeMsg = { link = 'Normal' },
    MsgArea = { link = 'Normal' },
    -- MsgSeparator = {},
    MoreMsg = { fg = colorscheme.accent },
    NonText = { fg = utils.shade(colorscheme.bg, 0.30) },
    NormalFloat = { bg = colorscheme.bgFloat },
    NormalNC = { link = 'Normal' },
    Pmenu = { link = 'NormalFloat' },
    PmenuSel = { bg = colorscheme.bgHighlight },
    PmenuSbar = {
      bg = utils.shade(
        colorscheme.accent,
        0.5,
        colorscheme.bg
      ),
    },
    PmenuThumb = { bg = utils.shade(colorscheme.bg, 0.20) },
    Question = { fg = colorscheme.accent },
    QuickFixLine = { fg = colorscheme.accent },
    SpecialKey = { fg = colorscheme.punctuation },
    StatusLine = { fg = colorscheme.fg, bg = bg },
    StatusLineNC = {
      fg = colorscheme.interactiveText,
      bg = colorscheme.bg,
    },
    TabLine = {
      bg = colorscheme.bg,
      fg = colorscheme.interactiveText,
    },
    TabLineFill = { link = 'TabLine' },
    TabLineSel = {
      bg = colorscheme.bg,
      fg = colorscheme.definition,
    },
    Search = { bg = utils.shade(colorscheme.string, 0.40, colorscheme.bg) },
    SpellBad = { undercurl = true, sp = colorscheme.err },
    SpellCap = { undercurl = true, sp = colorscheme.accent },
    SpellLocal = { undercurl = true, sp = colorscheme.definition },
    SpellRare = { undercurl = true, sp = colorscheme.warning },
    Title = { fg = colorscheme.accent },
    Visual = {
      bg = utils.shade(
        colorscheme.accent,
        0.40,
        colorscheme.bg
      ),
    },
    VisualNOS = { link = 'Visual' },
    WarningMsg = { fg = colorscheme.warning },
    Whitespace = { fg = colorscheme.punctuation },
    WildMenu = { bg = colorscheme.bgHighlight },
    Comment = {
      fg = colorscheme.comment,
      italic = config.italics.comments or false,
    },

    Constant = { fg = colorscheme.keyword },
    String = {
      fg = colorscheme.string,
      italic = config.italics.strings or false,
    },
    Character = { fg = colorscheme.string },
    Number = { fg = colorscheme.numericAccent, bold = true },
    Boolean = { fg = colorscheme.variable },
    Float = { link = 'Number' },

    Identifier = { fg = colorscheme.fg },
    Function = { fg = colorscheme.definition },
    Method = { fg = colorscheme.definition },
    Property = { fg = colorscheme.variable },
    Field = { link = 'Property' },
    Parameter = { fg = colorscheme.fg },
    Statement = { fg = colorscheme.keyword },
    Conditional = { fg = colorscheme.keyword },
    -- Repeat = {},
    Label = { fg = colorscheme.variable },
    Operator = { fg = colorscheme.keyword },
    Keyword = { link = 'Statement', italic = config.italics.keywords or false },
    Exception = { fg = colorscheme.keyword },

    PreProc = { link = 'Keyword' },
    -- Include = {},
    Define = { fg = colorscheme.definition },
    Macro = { link = 'Define' },
    PreCondit = { fg = colorscheme.keyword },

    Type = { fg = colorscheme.definition },
    Struct = { link = 'Type' },
    Class = { link = 'Type' },

    -- StorageClass = {},
    -- Structure = {},
    -- Typedef = {},

    Attribute = { link = 'Character' },
    Punctuation = { fg = colorscheme.punctuation },
    Special = { fg = colorscheme.punctuation },

    SpecialChar = { fg = colorscheme.keyword },
    Tag = { fg = colorscheme.string },
    Delimiter = { fg = colorscheme.punctuation },
    -- SpecialComment = {},
    Debug = { fg = colorscheme.accent },

    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { fg = colorscheme.bg },
    Error = { link = 'ErrorMsg' },
    Todo = { fg = colorscheme.warning, bold = true },

    -- LspReferenceText = {},
    -- LspReferenceRead = {},
    -- LspReferenceWrite = {},
    -- LspCodeLens = {},
    -- LspCodeLensSeparator = {},
    -- LspSignatureActiveParameter = {},

    DiagnosticError = { link = 'Error' },
    DiagnosticWarn = { link = 'WarningMsg' },
    DiagnosticInfo = { fg = colorscheme.accent },
    DiagnosticHint = { fg = colorscheme.hint },
    DiagnosticVirtualTextError = { link = 'DiagnosticError' },
    DiagnosticVirtualTextWarn = { link = 'DiagnosticWarn' },
    DiagnosticVirtualTextInfo = { link = 'DiagnosticInfo' },
    DiagnosticVirtualTextHint = { link = 'DiagnosticHint' },
    DiagnosticUnderlineError = { undercurl = true, link = 'DiagnosticError' },
    DiagnosticUnderlineWarn = { undercurl = true, link = 'DiagnosticWarn' },
    DiagnosticUnderlineInfo = { undercurl = true, link = 'DiagnosticInfo' },
    DiagnosticUnderlineHint = { undercurl = true, link = 'DiagnosticHint' },
    -- DiagnosticFloatingError = {},
    -- DiagnosticFloatingWarn = {},
    -- DiagnosticFloatingInfo = {},
    -- DiagnosticFloatingHint = {},
    -- DiagnosticSignError = {},
    -- DiagnosticSignWarn = {},
    -- DiagnosticSignInfo = {},
    -- DiagnosticSignHint = {},

    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    ['@text'] = { fg = colorscheme.fg },
    ['@texcolorscheme.literal'] = { link = 'Property' },
    -- ["@texcolorscheme.reference"] = {},
    ['@texcolorscheme.strong'] = { link = 'Bold' },
    ['@texcolorscheme.italic'] = { link = 'Italic' },
    ['@texcolorscheme.title'] = { link = 'Keyword' },
    ['@texcolorscheme.uri'] = {
      fg = colorscheme.accent,
      sp = colorscheme.accent,
      underline = true,
    },
    ['@texcolorscheme.underline'] = { link = 'Underlined' },
    ['@symbol'] = { fg = colorscheme.punctuation },
    ['@texcolorscheme.todo'] = { link = 'Todo' },
    ['@comment'] = { link = 'Comment' },
    ['@punctuation'] = { link = 'Punctuation' },
    ['@punctuation.bracket'] = { fg = colorscheme.hint },
    ['@punctuation.delimiter'] = { fg = colorscheme.delimiter },
    ['@punctuation.terminator.statement'] = { link = 'Delimiter' },
    ['@punctuation.special'] = { fg = colorscheme.keyword },
    ['@punctuation.separator.keyvalue'] = { fg = colorscheme.delimiter },

    ['@texcolorscheme.diff.add'] = { fg = colorscheme.diffAdd },
    ['@texcolorscheme.diff.delete'] = { fg = colorscheme.diffDelete },

    ['@constant'] = { link = 'Constant' },
    ['@constant.builtin'] = { fg = colorscheme.variable },
    ['@constancolorscheme.builtin'] = { link = 'Keyword' },
    -- ["@constancolorscheme.macro"] = {},
    -- ["@define"] = {},
    -- ["@macro"] = {},
    ['@string'] = { link = 'String' },
    ['@string.escape'] = { fg = utils.shade(colorscheme.string, 0.45) },
    ['@string.special'] = { fg = utils.shade(colorscheme.accent, 0.45) },
    -- ["@character"] = {},
    -- ["@character.special"] = {},
    ['@number'] = { link = 'Number' },
    ['@boolean'] = { link = 'Boolean' },
    -- ["@float"] = {},
    ['@function'] = {
      link = 'Function',
      italic = config.italics.functions or false,
    },
    ['@function.call'] = { link = 'Function' },
    ['@function.builtin'] = { link = 'Function' },
    -- ["@function.macro"] = {},
    ['@parameter'] = { link = 'Parameter' },
    ['@method'] = { link = 'Function' },
    ['@field'] = { link = 'Property' },
    ['@property'] = { link = 'Property' },
    ['@constructor'] = { fg = colorscheme.variable },
    -- ["@conditional"] = {},
    -- ["@repeat"] = {},
    ['@label'] = { link = 'Label' },
    ['@operator'] = { link = 'Operator' },
    ['@exception'] = { link = 'Exception' },
    ['@variable'] = {
      fg = colorscheme.variable,
      italic = config.italics.variables or false,
    },
    ['@variable.builtin'] = { fg = colorscheme.variable },
    ['@variable.member'] = { fg = colorscheme.fg },
    ['@variable.parameter'] = {
      fg = colorscheme.fg,
      italic = config.italics.variables or false,
    },
    ['@type'] = { link = 'Type' },
    ['@type.definition'] = { fg = colorscheme.fg },
    ['@type.builtin'] = { fg = colorscheme.accent },
    ['@type.qualifier'] = { fg = colorscheme.accent },
    ['@keyword'] = { link = 'Keyword' },
    -- ["@storageclass"] = {},
    -- ["@structure"] = {},
    ['@namespace'] = { link = 'Type' },
    ['@annotation'] = { link = 'Label' },
    -- ["@include"] = {},
    -- ["@preproc"] = {},
    ['@debug'] = { fg = colorscheme.accent },
    ['@tag'] = { link = 'Tag' },
    ['@tag.builtin'] = { link = 'Tag' },
    ['@tag.delimiter'] = { fg = colorscheme.punctuation },
    ['@tag.attribute'] = { fg = colorscheme.definition },
    ['@tag.jsx.element'] = { fg = colorscheme.variable },
    ['@attribute'] = { fg = colorscheme.definition },
    ['@error'] = { link = 'Error' },
    ['@warning'] = { link = 'WarningMsg' },
    ['@info'] = { fg = colorscheme.accent },

    -- Specific languages
    -- overrides
    ['@label.json'] = { fg = colorscheme.property }, -- For json
    ['@label.help'] = { link = '@texcolorscheme.uri' }, -- For help files
    ['@texcolorscheme.uri.html'] = { underline = true }, -- For html

    -- semantic highlighting
    ['@lsp.type.namespace'] = { link = '@namespace' },
    ['@lsp.type.type'] = { link = '@type' },
    ['@lsp.type.class'] = { link = '@type' },
    ['@lsp.type.enum'] = { link = '@type' },
    ['@lsp.type.enumMember'] = { fg = colorscheme.variable },
    ['@lsp.type.interface'] = { link = '@type' },
    ['@lsp.type.struct'] = { link = '@type' },
    ['@lsp.type.parameter'] = { link = '@parameter' },
    ['@lsp.type.property'] = { link = '@text' },
    ['@lsp.type.function'] = { link = '@function' },
    ['@lsp.type.method'] = { link = '@method' },
    ['@lsp.type.macro'] = { link = '@label' },
    ['@lsp.type.decorator'] = { link = '@label' },
    ['@lsp.typemod.function.declaration'] = { link = '@function' },
    ['@lsp.typemod.function.readonly'] = { link = '@function' },
  }

  -- integrations
  groups = vim.tbl_extend('force', groups, cmp.highlights())

  -- overrides
  groups = vim.tbl_extend(
    'force',
    groups,
    type(config.overrides) == 'function' and config.overrides()
      or config.overrides
  )

  for group, parameters in pairs(groups) do
    vim.api.nvim_set_hl(0, group, parameters)
  end
end

function theme.setup(values)
  setmetatable(
    config,
    { __index = vim.tbl_extend('force', config.defaults, values) }
  )

  theme.bufferline = { highlights = {} }
  theme.bufferline.highlights = bufferline.highlights(config)
end

function theme.colorscheme()
  if vim.version().minor < 8 then
    vim.notify(
      'Neovim 0.8+ is required for kaolin-blossom colorscheme',
      vim.log.levels.ERROR,
      { title = 'Min Theme' }
    )
    return
  end

  vim.api.nvim_command 'hi clear'
  if vim.fn.exists 'syntax_on' then
    vim.api.nvim_command 'syntax reset'
  end

  vim.g.VM_theme_set_by_colorscheme = true
  vim.o.termguicolors = true
  vim.g.colors_name = 'kaolin-blossom'

  set_terminal_colors()
  set_groups()
end

return theme
