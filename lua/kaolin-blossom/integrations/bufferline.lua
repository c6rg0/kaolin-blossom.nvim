local colorscheme = require 'kaolin-blossom.colorscheme'

local M = {}

function M.highlights(config)
  local bg = config.transparent and 'NONE' or colorscheme.bg0
  return {
    background = { bg = bg },
    buffer_visible = { fg = colorscheme.crimson1, bg = bg },
    buffer_selected = {
      fg = colorscheme.fg0,
      bg = colorscheme.bg0,
    },
    duplicate = {
      fg = colorscheme.fg0,
      bg = bg,
      italic = config.italics.bufferline or false,
    },
    duplicate_visible = {
      fg = colorscheme.fg0,
      bg = bg,
      italic = config.italics.bufferline or false,
    },
    duplicate_selected = {
      fg = colorscheme.fg0,
      bg = colorscheme.bg0,
      italic = config.italics.bufferline or false,
    },

    tab = { fg = colorscheme.fg0, bg = bg },
    tab_selected = {
      fg = colorscheme.fg0,
      bg = colorscheme.bg0,
    },
    tab_close = { fg = colorscheme.red0, bg = bg },
    indicator_selected = {
      fg = colorscheme.orange0,
      bg = colorscheme.bg0,
      bold = true,
    },

    separator = { fg = colorscheme.bg0, bg = bg },
    separator_selected = {
      fg = colorscheme.bg0,
      bg = colorscheme.bg0,
    },
    separator_visible = { fg = colorscheme.bg0, bg = bg },
    offset_separator = { fg = colorscheme.bg0, bg = bg },
    tab_separator = { fg = colorscheme.bg0, bg = bg },
    tab_separator_selected = {
      fg = colorscheme.bg0,
      bg = colorscheme.bg0,
    },

    close_button = { fg = colorscheme.crimson1, bg = bg },
    close_button_visible = { fg = colorscheme.red0, bg = bg },
    close_button_selected = {
      fg = colorscheme.red0,
      bg = colorscheme.bg0,
    },

    fill = { bg = bg },

    numbers = { fg = colorscheme.crimson1, bg = bg },
    numbers_visible = { fg = colorscheme.crimson1, bg = bg },
    numbers_selected = {
      fg = colorscheme.fg0,
      bg = colorscheme.bg0,
      italic = config.italics.bufferline or false,
    },

    error = { fg = colorscheme.red0, bg = bg },
    error_visible = { fg = colorscheme.red0, bg = bg },
    error_selected = {
      fg = colorscheme.red0,
      bg = colorscheme.bg0,
      italic = config.italics.bufferline or false,
    },
    error_diagnostic = { fg = colorscheme.red0, bg = bg },
    error_diagnostic_visible = { fg = colorscheme.red0, bg = bg },
    error_diagnostic_selected = {
      fg = colorscheme.red0,
      bg = colorscheme.bg0,
    },

    warning = { fg = colorscheme.amber1, bg = bg },
    warning_visible = { fg = colorscheme.amber1, bg = bg },
    warning_selected = {
      fg = colorscheme.amber1,
      bg = colorscheme.bg0,
      italic = config.italics.bufferline or false,
    },
    warning_diagnostic = { fg = colorscheme.amber1, bg = bg },
    warning_diagnostic_visible = { fg = colorscheme.amber1, bg = bg },
    warning_diagnostic_selected = {
      fg = colorscheme.amber1,
      bg = colorscheme.bg0,
    },

    info = { fg = colorscheme.orange0, bg = bg },
    info_visible = { fg = colorscheme.orange0, bg = bg },
    info_selected = {
      fg = colorscheme.orange0,
      bg = colorscheme.bg0,
      italic = config.italics.bufferline or false,
    },
    info_diagnostic = { fg = colorscheme.orange0, bg = bg },
    info_diagnostic_visible = { fg = colorscheme.orange0, bg = bg },
    info_diagnostic_selected = {
      fg = colorscheme.orange0,
      bg = colorscheme.bg0,
    },

    hint = { fg = colorscheme.green0, bg = bg },
    hint_visible = { fg = colorscheme.green0, bg = bg },
    hint_selected = {
      fg = colorscheme.green0,
      bg = colorscheme.bg0,
      italic = config.italics.bufferline or false,
    },
    hint_diagnostic = { fg = colorscheme.green0, bg = bg },
    hint_diagnostic_visible = { fg = colorscheme.green0, bg = bg },
    hint_diagnostic_selected = {
      fg = colorscheme.green0,
      bg = colorscheme.bg0,
    },

    diagnostic = { fg = colorscheme.crimson1, bg = bg },
    diagnostic_visible = { fg = colorscheme.crimson1, bg = bg },
    diagnostic_selected = {
      fg = colorscheme.crimson1,
      bg = colorscheme.bg0,
      italic = config.italics.bufferline or false,
    },

    modified = { fg = colorscheme.amber0, bg = bg },
    modified_selected = {
      fg = colorscheme.amber0,
      bg = colorscheme.bg0,
    },
  }
end

return M
