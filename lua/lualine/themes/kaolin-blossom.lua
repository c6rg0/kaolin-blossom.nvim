-- This will be able to run agnostic of colourscheme variant
-- once I sort out how to handle the imports right below

local colorscheme = require 'kaolin-blossom.colorscheme'
local config = require 'kaolin-blossom.config'
local bg = config.transparent and 'NONE' or colorscheme.barBg

local theme = {
  normal = {
    a = { bg = bg, fg = colorscheme.barFg, gui = 'bold' },
    b = { bg = bg, fg = colorscheme.barFg },
    c = { bg = bg, fg = colorscheme.barFg },
  },

  inactive = {
    a = { bg = colorscheme.fg0, fg = colorscheme.barFg },
    b = { bg = bg, fg = colorscheme.inactiveFg, gui = 'bold' },
    c = { bg = bg, fg = colorscheme.inactiveFg },
  },

  insert = {
    a = {
      bg = colorscheme.insertBg,
      fg = colorscheme.insertFg,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.barFg },
  },

  terminal = {
    a = {
      bg = colorscheme.terminalBg,
      fg = colorscheme.terminalFg,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.barFg },
  },

  command = {
    a = {
      bg = colorscheme.commandBg,
      fg = colorscheme.commandFg,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.barFg },
  },

  visual = {
    a = {
      bg = colorscheme.visualBg,
      fg = colorscheme.visualFg,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.barFg },
  },

  replace = {
    a = {
      bg = colorscheme.replaceBg,
      fg = colorscheme.replaceFg,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.barFg },
  },
}

return theme
