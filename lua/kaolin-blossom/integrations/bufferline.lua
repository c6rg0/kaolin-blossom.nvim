local kaolin_blossom = require 'kaolin-blossom.colorscheme'
local colorscheme = kaolin_blossom.roles

local M = {}

function M.highlights(config)
  local bg = config.transparent and 'NONE' or colorscheme.bg

  return {
    background = { bg = bg },
    buffer_visible = { fg = colorscheme.hint, bg = bg },
    buffer_selected = {
      fg = colorscheme.fg,
      bg = colorscheme.bg,
    },
    duplicate = {
      fg = colorscheme.fg,
      bg = bg,
      italic = config.italics.bufferline or false,
    },
    duplicate_visible = {
      fg = colorscheme.fg,
      bg = bg,
      italic = config.italics.bufferline or false,
    },
    duplicate_selected = {
      fg = colorscheme.fg,
      bg = colorscheme.bg,
      italic = config.italics.bufferline or false,
    },

    tab = { fg = colorscheme.fg, bg = bg },
    tab_selected = {
      fg = colorscheme.fg,
      bg = colorscheme.bg,
    },
    tab_close = { fg = colorscheme.err, bg = bg },
    indicator_selected = {
      fg = colorscheme.accent,
      bg = colorscheme.bg,
      bold = true,
    },

    separator = { fg = colorscheme.bg, bg = bg },
    separator_selected = {
      fg = colorscheme.bg,
      bg = colorscheme.bg,
    },
    separator_visible = { fg = colorscheme.bg, bg = bg },
    offset_separator = { fg = colorscheme.bg, bg = bg },
    tab_separator = { fg = colorscheme.bg, bg = bg },
    tab_separator_selected = {
      fg = colorscheme.bg,
      bg = colorscheme.bg,
    },

    close_button = { fg = colorscheme.bgHighlight, bg = bg },
    close_button_visible = { fg = colorscheme.err, bg = bg },
    close_button_selected = {
      fg = colorscheme.err,
      bg = colorscheme.bg,
    },

    fill = { bg = bg },

    numbers = { fg = colorscheme.bgHighlight, bg = bg },
    numbers_visible = { fg = colorscheme.bgHighlight, bg = bg },
    numbers_selected = {
      fg = colorscheme.fg,
      bg = colorscheme.bg,
      italic = config.italics.bufferline or false,
    },

    error = { fg = colorscheme.err, bg = bg },
    error_visible = { fg = colorscheme.err, bg = bg },
    error_selected = {
      fg = colorscheme.err,
      bg = colorscheme.bg,
      italic = config.italics.bufferline or false,
    },
    error_diagnostic = { fg = colorscheme.err, bg = bg },
    error_diagnostic_visible = { fg = colorscheme.err, bg = bg },
    error_diagnostic_selected = {
      fg = colorscheme.err,
      bg = colorscheme.bg,
    },

    warning = { fg = colorscheme.warning, bg = bg },
    warning_visible = { fg = colorscheme.warning, bg = bg },
    warning_selected = {
      fg = colorscheme.warning,
      bg = colorscheme.bg,
      italic = config.italics.bufferline or false,
    },
    warning_diagnostic = { fg = colorscheme.warning, bg = bg },
    warning_diagnostic_visible = { fg = colorscheme.warning, bg = bg },
    warning_diagnostic_selected = {
      fg = colorscheme.warning,
      bg = colorscheme.bg,
    },

    info = { fg = colorscheme.accent, bg = bg },
    info_visible = { fg = colorscheme.accent, bg = bg },
    info_selected = {
      fg = colorscheme.accent,
      bg = colorscheme.bg,
      italic = config.italics.bufferline or false,
    },
    info_diagnostic = { fg = colorscheme.accent, bg = bg },
    info_diagnostic_visible = { fg = colorscheme.accent, bg = bg },
    info_diagnostic_selected = {
      fg = colorscheme.accent,
      bg = colorscheme.bg,
    },

    hint = { fg = colorscheme.diffAdd, bg = bg },
    hint_visible = { fg = colorscheme.diffAdd, bg = bg },
    hint_selected = {
      fg = colorscheme.diffAdd,
      bg = colorscheme.bg,
      italic = config.italics.bufferline or false,
    },
    hint_diagnostic = { fg = colorscheme.diffAdd, bg = bg },
    hint_diagnostic_visible = { fg = colorscheme.diffAdd, bg = bg },
    hint_diagnostic_selected = {
      fg = colorscheme.diffAdd,
      bg = colorscheme.bg,
    },

    diagnostic = { fg = colorscheme.bgHighlight, bg = bg },
    diagnostic_visible = { fg = colorscheme.bgHighlight, bg = bg },
    diagnostic_selected = {
      fg = colorscheme.bgHighlight,
      bg = colorscheme.bg,
      italic = config.italics.bufferline or false,
    },

    modified = { fg = colorscheme.hint, bg = bg },
    modified_selected = {
      fg = colorscheme.hint,
      bg = colorscheme.bg,
    },
  }
end

return M
