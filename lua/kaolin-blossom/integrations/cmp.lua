local kaolin_blossom = require 'kaolin-blossom.colorscheme'
local colorscheme = kaolin_blossom.roles

local M = {}

function M.highlights()
  return {
    CmpItemAbbr = { fg = colorscheme.fg },
    CmpItemAbbrDeprecated = { fg = colorscheme.fg, strikethrough = true },
    CmpItemKind = { fg = colorscheme.accent },
    CmpItemMenu = { fg = colorscheme.fg },
    CmpItemAbbrMatch = { fg = colorscheme.diffAdd, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = colorscheme.diffAdd, bold = true },

    -- kind support
    CmpItemKindSnippet = { fg = colorscheme.string },
    CmpItemKindKeyword = { fg = colorscheme.keyword },
    CmpItemKindText = { fg = colorscheme.string },
    CmpItemKindMethod = { fg = colorscheme.definition },
    CmpItemKindConstructor = { fg = colorscheme.definition },
    CmpItemKindFunction = { fg = colorscheme.definition },
    CmpItemKindFolder = { fg = colorscheme.string },
    CmpItemKindModule = { fg = colorscheme.string },
    CmpItemKindConstant = { fg = colorscheme.variable },
    CmpItemKindField = { fg = colorscheme.variable },
    CmpItemKindProperty = { fg = colorscheme.hint },
    CmpItemKindEnum = { fg = colorscheme.definition },
    CmpItemKindUnit = { fg = colorscheme.definition },
    CmpItemKindClass = { fg = colorscheme.definition },
    CmpItemKindVariable = { fg = colorscheme.definition },
    CmpItemKindFile = { fg = colorscheme.string },
    CmpItemKindInterface = { fg = colorscheme.definition },
    CmpItemKindColor = { fg = colorscheme.hint },
    CmpItemKindReference = { fg = colorscheme.definition },
    CmpItemKindEnumMember = { fg = colorscheme.variable },
    CmpItemKindStruct = { fg = colorscheme.definition },
    CmpItemKindValue = { fg = colorscheme.numericAccent },
    CmpItemKindEvent = { fg = colorscheme.warning },
    CmpItemKindOperator = { fg = colorscheme.fg },
    CmpItemKindTypeParameter = { fg = colorscheme.keyword },
    CmpItemKindCopilot = { fg = colorscheme.string },
  }
end

return M
