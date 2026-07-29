local config = require 'kaolin-blossom.config'

local colorscheme = {
  standardWhite = '#f2f2f2',
  standardBlack = '#161618',
}

colorscheme.editorBackground = config.transparent and 'none' or '#453038'
colorscheme.sidebarBackground = '#271f1f'
colorscheme.popupBackground = '#33242A'
colorscheme.floatingWindowBackground = '#2E2025'
colorscheme.menuOptionBackground = '#33242A'

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
colorscheme.syntaxFunction = '#a0586c'
colorscheme.warningText = '#f3c91f'
colorscheme.syntaxKeyword = '#eed891'
colorscheme.linkText = '#688468'
colorscheme.stringText = '#65a0a1'
colorscheme.warningEmphasis = '#CFB05F'
colorscheme.successText = '#3e594e'
colorscheme.errorText = '#e84c58'
colorscheme.specialKeyword = '#dbb68f'
colorscheme.commentText = '#6B4B53' -- or #688468
colorscheme.syntaxOperator = '#CD8266'
colorscheme.foregroundEmphasis = '#18181B'
colorscheme.terminalGray = '#353b3c'

return colorscheme
