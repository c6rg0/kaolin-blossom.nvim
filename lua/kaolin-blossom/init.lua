local bufferline = require 'kaolin-blossom.integrations.bufferline'
local cmp = require 'kaolin-blossom.integrations.cmp'
local colorscheme = require 'kaolin-blossom.colorscheme'
local config = require 'kaolin-blossom.config'
local utils = require 'kaolin-blossom.utils'
local theme = {}

local function set_terminal_colors()
  vim.g.terminal_color_0 = colorscheme.bg0
  vim.g.terminal_color_1 = colorscheme.red0
  vim.g.terminal_color_2 = colorscheme.green0
  vim.g.terminal_color_3 = colorscheme.amber1
  vim.g.terminal_color_4 = colorscheme.orange0
  vim.g.terminal_color_5 = colorscheme.amber2
  vim.g.terminal_color_6 = colorscheme.green1
  vim.g.terminal_color_7 = colorscheme.fg0
  vim.g.terminal_color_8 = colorscheme.vermilion1
  vim.g.terminal_color_9 = colorscheme.red0
  vim.g.terminal_color_10 = colorscheme.cyan0
  vim.g.terminal_color_11 = colorscheme.amber0
  vim.g.terminal_color_12 = colorscheme.vermilion0
  vim.g.terminal_color_13 = colorscheme.red0
  vim.g.terminal_color_14 = colorscheme.cyan0
  vim.g.terminal_color_15 = colorscheme.gray0
  vim.g.terminal_color_background = colorscheme.bg0
  vim.g.terminal_color_foreground = colorscheme.fg0
end

local function set_groups()
  local bg = config.transparent and 'NONE' or colorscheme.bg0
  local diff_add =
    utils.shade(colorscheme.green0, 0.5, colorscheme.bg0)
  local diff_delete =
    utils.shade(colorscheme.red0, 0.5, colorscheme.bg0)
  local diff_change =
    utils.shade(colorscheme.orange0, 0.5, colorscheme.bg0)
  local diff_text =
    utils.shade(colorscheme.amber1, 0.5, colorscheme.bg0)

  local groups = {
    -- base
    Normal = { fg = colorscheme.fg0, bg = bg },
    LineNr = { fg = colorscheme.crimson1 },
    ColorColumn = {
      bg = utils.shade(colorscheme.green1, 0.5, colorscheme.bg0),
    },
    Conceal = {},
    Cursor = { fg = colorscheme.bg0, bg = colorscheme.fg0 },
    lCursor = { link = 'Cursor' },
    CursorIM = { link = 'Cursor' },
    CursorLine = { bg = colorscheme.bg3 },
    CursorColumn = { link = 'CursorLine' },
    Directory = { fg = colorscheme.orange0 },
    DiffAdd = { bg = bg, fg = diff_add },
    DiffChange = { bg = bg, fg = diff_change },
    DiffDelete = { bg = bg, fg = diff_delete },
    DiffText = { bg = bg, fg = diff_text },
    EndOfBuffer = { fg = colorscheme.amber2 },
    TermCursor = { link = 'Cursor' },
    TermCursorNC = { link = 'Cursor' },
    ErrorMsg = { fg = colorscheme.red0 },
    VertSplit = { fg = colorscheme.black0, bg = bg },
    Winseparator = { link = 'VertSplit' },
    SignColumn = { link = 'Normal' },
    Folded = { fg = colorscheme.fg0, bg = colorscheme.bg3 },
    FoldColumn = { link = 'SignColumn' },
    IncSearch = {
      bg = utils.mix(
        colorscheme.crimson0,
        colorscheme.bg0,
        math.abs(0.30)
      ),
      fg = colorscheme.bg0,
    },
    Substitute = { link = 'IncSearch' },
    CursorLineNr = { fg = colorscheme.crimson0 },
    MatchParen = { fg = colorscheme.red0, bg = bg },
    ModeMsg = { link = 'Normal' },
    MsgArea = { link = 'Normal' },
    -- MsgSeparator = {},
    MoreMsg = { fg = colorscheme.orange0 },
    NonText = { fg = utils.shade(colorscheme.bg0, 0.30) },
    NormalFloat = { bg = colorscheme.bg2 },
    NormalNC = { link = 'Normal' },
    Pmenu = { link = 'NormalFloat' },
    PmenuSel = { bg = colorscheme.bg3 },
    PmenuSbar = {
      bg = utils.shade(
        colorscheme.orange0,
        0.5,
        colorscheme.bg0
      ),
    },
    PmenuThumb = { bg = utils.shade(colorscheme.bg0, 0.20) },
    Question = { fg = colorscheme.orange0 },
    QuickFixLine = { fg = colorscheme.orange0 },
    SpecialKey = { fg = colorscheme.vermilion0 },
    StatusLine = { fg = colorscheme.fg0, bg = bg },
    StatusLineNC = {
      fg = colorscheme.vermilion1,
      bg = colorscheme.bg0,
    },
    TabLine = {
      bg = colorscheme.bg0,
      fg = colorscheme.vermilion1,
    },
    TabLineFill = { link = 'TabLine' },
    TabLineSel = {
      bg = colorscheme.bg0,
      fg = colorscheme.amber2,
    },
    Search = { bg = utils.shade(colorscheme.cyan0, 0.40, colorscheme.bg) },
    SpellBad = { undercurl = true, sp = colorscheme.red0 },
    SpellCap = { undercurl = true, sp = colorscheme.orange0 },
    SpellLocal = { undercurl = true, sp = colorscheme.amber2 },
    SpellRare = { undercurl = true, sp = colorscheme.amber0 },
    Title = { fg = colorscheme.orange0 },
    Visual = {
      bg = utils.shade(
        colorscheme.orange0,
        0.40,
        colorscheme.bg0
      ),
    },
    VisualNOS = { link = 'Visual' },
    WarningMsg = { fg = colorscheme.amber0 },
    Whitespace = { fg = colorscheme.vermilion0 },
    WildMenu = { bg = colorscheme.bg3 },
    Comment = {
      fg = colorscheme.vermilion2,
      italic = config.italics.comments or false,
    },

    Constant = { fg = colorscheme.red0 },
    String = {
      fg = colorscheme.cyan0,
      italic = config.italics.strings or false,
    },
    Character = { fg = colorscheme.cyan0 },
    Number = { fg = colorscheme.crimson0, bold = true },
    Boolean = { fg = colorscheme.orange0 },
    Float = { link = 'Number' },

    Identifier = { fg = colorscheme.fg0 },
    Function = { fg = colorscheme.amber2 },
    Method = { fg = colorscheme.amber2 },
    Property = { fg = colorscheme.orange0 },
    Field = { link = 'Property' },
    Parameter = { fg = colorscheme.fg0 },
    Statement = { fg = colorscheme.red0 },
    Conditional = { fg = colorscheme.red0 },
    -- Repeat = {},
    Label = { fg = colorscheme.orange0 },
    Operator = { fg = colorscheme.red0 },
    Keyword = { link = 'Statement', italic = config.italics.keywords or false },
    Exception = { fg = colorscheme.red0 },

    PreProc = { link = 'Keyword' },
    -- Include = {},
    Define = { fg = colorscheme.amber2 },
    Macro = { link = 'Define' },
    PreCondit = { fg = colorscheme.red0 },

    Type = { fg = colorscheme.amber2 },
    Struct = { link = 'Type' },
    Class = { link = 'Type' },

    -- StorageClass = {},
    -- Structure = {},
    -- Typedef = {},

    Attribute = { link = 'Character' },
    Punctuation = { fg = colorscheme.vermilion0 },
    Special = { fg = colorscheme.vermilion0 },

    SpecialChar = { fg = colorscheme.red0 },
    Tag = { fg = colorscheme.cyan0 },
    Delimiter = { fg = colorscheme.vermilion0 },
    -- SpecialComment = {},
    Debug = { fg = colorscheme.orange0 },

    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { fg = colorscheme.bg0 },
    Error = { link = 'ErrorMsg' },
    Todo = { fg = colorscheme.amber0, bold = true },

    -- LspReferenceText = {},
    -- LspReferenceRead = {},
    -- LspReferenceWrite = {},
    -- LspCodeLens = {},
    -- LspCodeLensSeparator = {},
    -- LspSignatureActiveParameter = {},

    DiagnosticError = { link = 'Error' },
    DiagnosticWarn = { link = 'WarningMsg' },
    DiagnosticInfo = { fg = colorscheme.orange0 },
    DiagnosticHint = { fg = colorscheme.amber1 },
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

    ['@text'] = { fg = colorscheme.fg0 },
    ['@texcolorscheme.literal'] = { link = 'Property' },
    -- ["@texcolorscheme.reference"] = {},
    ['@texcolorscheme.strong'] = { link = 'Bold' },
    ['@texcolorscheme.italic'] = { link = 'Italic' },
    ['@texcolorscheme.title'] = { link = 'Keyword' },
    ['@texcolorscheme.uri'] = {
      fg = colorscheme.orange0,
      sp = colorscheme.orange0,
      underline = true,
    },
    ['@texcolorscheme.underline'] = { link = 'Underlined' },
    ['@symbol'] = { fg = colorscheme.vermilion0 },
    ['@texcolorscheme.todo'] = { link = 'Todo' },
    ['@comment'] = { link = 'Comment' },
    ['@punctuation'] = { link = 'Punctuation' },
    ['@punctuation.bracket'] = { fg = colorscheme.amber1 },
    ['@punctuation.delimiter'] = { fg = colorscheme.red0 },
    ['@punctuation.terminator.statement'] = { link = 'Delimiter' },
    ['@punctuation.special'] = { fg = colorscheme.red0 },
    ['@punctuation.separator.keyvalue'] = { fg = colorscheme.red0 },

    ['@texcolorscheme.diff.add'] = { fg = colorscheme.green0 },
    ['@texcolorscheme.diff.delete'] = { fg = colorscheme.red0 },

    ['@constant'] = { link = 'Constant' },
    ['@constant.builtin'] = { fg = colorscheme.orange0 },
    ['@constancolorscheme.builtin'] = { link = 'Keyword' },
    -- ["@constancolorscheme.macro"] = {},
    -- ["@define"] = {},
    -- ["@macro"] = {},
    ['@string'] = { link = 'String' },
    ['@string.escape'] = { fg = utils.shade(colorscheme.cyan0, 0.45) },
    ['@string.special'] = { fg = utils.shade(colorscheme.orange0, 0.45) },
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
    ['@constructor'] = { fg = colorscheme.orange0 },
    -- ["@conditional"] = {},
    -- ["@repeat"] = {},
    ['@label'] = { link = 'Label' },
    ['@operator'] = { link = 'Operator' },
    ['@exception'] = { link = 'Exception' },
    ['@variable'] = {
      fg = colorscheme.orange0,
      italic = config.italics.variables or false,
    },
    ['@variable.builtin'] = { fg = colorscheme.orange0 },
    ['@variable.member'] = { fg = colorscheme.fg0 },
    ['@variable.parameter'] = {
      fg = colorscheme.fg0,
      italic = config.italics.variables or false,
    },
    ['@type'] = { link = 'Type' },
    ['@type.definition'] = { fg = colorscheme.fg0 },
    ['@type.builtin'] = { fg = colorscheme.orange0 },
    ['@type.qualifier'] = { fg = colorscheme.orange0 },
    ['@keyword'] = { link = 'Keyword' },
    -- ["@storageclass"] = {},
    -- ["@structure"] = {},
    ['@namespace'] = { link = 'Type' },
    ['@annotation'] = { link = 'Label' },
    -- ["@include"] = {},
    -- ["@preproc"] = {},
    ['@debug'] = { fg = colorscheme.orange0 },
    ['@tag'] = { link = 'Tag' },
    ['@tag.builtin'] = { link = 'Tag' },
    ['@tag.delimiter'] = { fg = colorscheme.vermilion0 },
    ['@tag.attribute'] = { fg = colorscheme.amber2 },
    ['@tag.jsx.element'] = { fg = colorscheme.orange0 },
    ['@attribute'] = { fg = colorscheme.amber2 },
    ['@error'] = { link = 'Error' },
    ['@warning'] = { link = 'WarningMsg' },
    ['@info'] = { fg = colorscheme.orange0 },

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
    ['@lsp.type.enumMember'] = { fg = colorscheme.orange0 },
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
