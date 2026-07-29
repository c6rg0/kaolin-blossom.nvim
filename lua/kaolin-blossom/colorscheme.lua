local config = require 'kaolin-blossom.config'

local colorscheme = {
  standardWhite = '#f2f2f2',
  standardBlack = '#161618',
}

colorscheme.editorBackground = config.transparent and 'none' or '#2F2025'
colorscheme.sidebarBackground = '#2F2025'
colorscheme.popupBackground = '#453038'
colorscheme.floatingWindowBackground = '#3A2930'
colorscheme.menuOptionBackground = '#453038'

colorscheme.mainText = '#f2f2f2'
colorscheme.emphasisText = '#eed891'
colorscheme.commandText = '#f2f2f2'
colorscheme.inactiveText = '#40332E'
colorscheme.disabledText = '#CFB05F'
colorscheme.lineNumberText = '#6B4B53'
colorscheme.selectedText = '#453038'
colorscheme.inactiveSelectionText = '#847068'

colorscheme.windowBorder = '#161618'
colorscheme.focusedBorder = '#2B2B2F'
colorscheme.emphasizedBorder = '#303035'

colorscheme.syntaxError = '#e84c58'
colorscheme.syntaxFunction = '#eeeb28'
colorscheme.warningText = '#f3c91f'
colorscheme.syntaxKeyword = '#eed891'
colorscheme.linkText = '#688468'
colorscheme.stringText = '#65a0a1'
colorscheme.warningEmphasis = '#CFB05F'
colorscheme.successText = '#3e594e'
colorscheme.errorText = '#e84c58'
colorscheme.specialKeyword = '#dbb68f'
colorscheme.commentText = '#65a0a1' -- or #688468
colorscheme.syntaxOperator = '#CD8266'
colorscheme.foregroundEmphasis = '#18181B'
colorscheme.terminalGray = '#353b3c'

return colorscheme
