local colorscheme = require 'kaolin-blossom.colorscheme'
local config = require 'kaolin-blossom.config'

local bg = config.transparent and 'NONE' or colorscheme.bg3

local theme = {
  normal = {
    a = { bg = bg, fg = colorscheme.vermilion2, gui = 'bold' },
    b = { bg = bg, fg = colorscheme.vermilion2 },
    c = { bg = bg, fg = colorscheme.vermilion2 },
  },

  insert = {
    a = {
      bg = colorscheme.vermilion0,
      fg = colorscheme.fg0,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.vermilion2 },
  },

  terminal = {
    a = {
      bg = colorscheme.green0,
      fg = colorscheme.fg0,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.vermilion2 },
  },

  command = {
    a = {
      bg = colorscheme.green0,
      fg = colorscheme.fg0,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.vermilion2 },
  },

  visual = {
    a = {
      bg = colorscheme.amber2,
      fg = colorscheme.fg0,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.vermilion2 },
  },

  replace = {
    a = {
      bg = colorscheme.red0,
      fg = colorscheme.fg0,
      gui = 'bold',
    },
    b = { bg = bg, fg = colorscheme.vermilion2 },
  },

  inactive = {
    a = { bg = colorscheme.fg0, fg = colorscheme.vermilion2 },
    b = { bg = bg, fg = colorscheme.amber0, gui = 'bold' },
    c = { bg = bg, fg = colorscheme.amber0 },
  }
}

return theme
