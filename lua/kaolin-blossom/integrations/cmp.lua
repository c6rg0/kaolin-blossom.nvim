local colorscheme = require 'kaolin-blossom.colorscheme'

local M = {}

function M.highlights()
  return {
    CmpItemAbbr = { fg = colorscheme.fg0 },
    CmpItemAbbrDeprecated = { fg = colorscheme.fg0, strikethrough = true },
    CmpItemKind = { fg = colorscheme.orange0 },
    CmpItemMenu = { fg = colorscheme.fg0 },
    CmpItemAbbrMatch = { fg = colorscheme.green0, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = colorscheme.green0, bold = true },

    -- kind support
    CmpItemKindSnippet = { fg = colorscheme.cyan0 },
    CmpItemKindKeyword = { fg = colorscheme.red0 },
    CmpItemKindText = { fg = colorscheme.amber1 },
    CmpItemKindMethod = { fg = colorscheme.amber2 },
    CmpItemKindConstructor = { fg = colorscheme.amber2 },
    CmpItemKindFunction = { fg = colorscheme.amber2 },
    CmpItemKindFolder = { fg = colorscheme.amber2 },
    CmpItemKindModule = { fg = colorscheme.amber2 },
    CmpItemKindConstant = { fg = colorscheme.amber2 },
    CmpItemKindField = { fg = colorscheme.amber2 },
    CmpItemKindProperty = { fg = colorscheme.green0 },
    CmpItemKindEnum = { fg = colorscheme.green0 },
    CmpItemKindUnit = { fg = colorscheme.green0 },
    CmpItemKindClass = { fg = colorscheme.amber0 },
    CmpItemKindVariable = { fg = colorscheme.red0 },
    CmpItemKindFile = { fg = colorscheme.green1 },
    CmpItemKindInterface = { fg = colorscheme.cyan0 },
    CmpItemKindColor = { fg = colorscheme.red0 },
    CmpItemKindReference = { fg = colorscheme.red0 },
    CmpItemKindEnumMember = { fg = colorscheme.red0 },
    CmpItemKindStruct = { fg = colorscheme.orange0 },
    CmpItemKindValue = { fg = colorscheme.amber1 },
    CmpItemKindEvent = { fg = colorscheme.orange0 },
    CmpItemKindOperator = { fg = colorscheme.red0 },
    CmpItemKindTypeParameter = { fg = colorscheme.red0 },
    CmpItemKindCopilot = { fg = colorscheme.green1 },
  }
end

return M
