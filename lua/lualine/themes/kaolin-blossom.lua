local colorscheme = require 'kaolin-blossom.colorscheme'
local config = require 'kaolin-blossom.config'

local bg = config.transparent and 'NONE' or colorscheme.popupBackground

local theme = {
  normal = {
    a = { bg = bg, fg = colorscheme.inactiveSelectionText, gui = 'bold' },
    b = { bg = bg, fg = colorscheme.inactiveSelectionText },
    c = { bg = bg, fg = colorscheme.inactiveSelectionText },
  },

  insert = {
    a = {
      bg = colorscheme.syntaxOperator,
      fg = colorscheme.mainText,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.inactiveSelectionText },
  },

  terminal = {
    a = {
      bg = colorscheme.successText,
      fg = colorscheme.mainText,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.inactiveSelectionText },
  },

  command = {
    a = {
      bg = colorscheme.successText,
      fg = colorscheme.mainText,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.inactiveSelectionText },
  },

  visual = {
    a = {
      bg = colorscheme.syntaxKeyword,
      fg = colorscheme.mainText,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.inactiveSelectionText },
  },

  replace = {
    a = {
      bg = colorscheme.errorText,
      fg = colorscheme.mainText,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.inactiveSelectionText },
  },

  inactive = {
    a = { bg = colorscheme.mainText, fg = colorscheme.inactiveSelectionText },
    b = { bg = bg, fg = colorscheme.warningText, gui = 'bold' },
    c = { bg = bg, fg = colorscheme.warningText },
  }
}

return theme
