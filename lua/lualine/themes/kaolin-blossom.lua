-- This will be able to run agnostic of colourscheme variant
-- once I figure out how to handle the imports

local kaolin_blossom = require 'kaolin-blossom.colorscheme'
local colorscheme = kaolin_blossom.roles
local config = require 'kaolin-blossom.config'
local barBg = config.transparent and 'NONE' or colorscheme.barBg

local theme = {
  normal = {
    a = {
      bg = barBg,
      fg = colorscheme.barFg,
      gui = 'bold'
    },
    b = {
      bg = barBg,
      fg = colorscheme.barFg
    },
    c = {
      bg = barBg,
      fg = colorscheme.barFg
    },
  },

  inactive = {
    a = {
      bg = colorscheme.fg,
      fg = colorscheme.barFg
    },
    b = {
      bg = barBg,
      fg = colorscheme.inactiveFg,
      gui = 'bold'
    },
    c = {
      bg = barBg,
      fg = colorscheme.inactiveFg
    },
  },

  insert = {
    a = {
      bg = colorscheme.insertBg,
      fg = colorscheme.insertFg,
      gui = 'bold',
    },
    b = {
      bg = barBg,
      fg = colorscheme.barFg
    },
  },

  terminal = {
    a = {
      bg = colorscheme.terminalBg,
      fg = colorscheme.terminalFg,
      gui = 'bold',
    },
    b = {
      bg = barBg,
      fg = colorscheme.barFg
    },
  },

  command = {
    a = {
      bg = colorscheme.commandBg,
      fg = colorscheme.commandFg,
      gui = 'bold',
    },
    b = {
      bg = barBg,
      fg = colorscheme.barFg
    },
  },

  visual = {
    a = {
      bg = colorscheme.visualBg,
      fg = colorscheme.visualFg,
      gui = 'bold',
    },
    b = {
      bg = barBg,
      fg = colorscheme.barFg
    },
  },

  replace = {
    a = {
      bg = colorscheme.replaceBg,
      fg = colorscheme.replaceFg,
      gui = 'bold',
    },
    b = {
      bg = barBg,
      fg = colorscheme.barFg
    },
  },
}

return theme
