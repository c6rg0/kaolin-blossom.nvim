local config = require 'kaolin-blossom.config'

local ansi_colours = {
  black = '#161618',
  red = '#c93237',
  green = '#3e594e',
  yellow = '#eed891',
  blue = '#385A82',
  purple= '#6B4B53',
  cyan = '#65a0a1',
  white = '#e6e6e8',

  brightBlack = '#40332E',
  brightRed = '#e84c58',
  brightGreen = '#688468',
  brightYellow = '#f3c91f',
  brightBlue = '#0e70d1',
  brightPurple = '#a0586c',
  brightCyan = '#57bfc2',
  brightWhite = '#f2f2f2',
}

local variant_colours = {
  -- Variant colours (to go into roles)
  bg0 = config.transparent and 'none' or '#2F2025',
  bg1 = '#3A2930',
  bg2 = '#453038',
  gray0 = '#2B2B2F',
  gray1 = '#303035',
  orange = '#dbb68f',
  vermilion0 = '#CD8266',
  vermilion1 = '#847068',
  amber = '#CFB05F',
}

local colorscheme = {
  bg = variant_colours.bg0,
  bgFloat = variant_colours.bg1,
  bgHighlight = variant_colours.bg2,
  fg = ansi_colours.brightWhite,
  border = ansi_colours.black,
  numericAccent = ansi_colours.brightPurple,
  lineNumber = ansi_colours.purple,
  column = ansi_colours.brightGreen, -- no clue what this is (init.lua: "ColorColumn")
  err = ansi_colours.brightRed,
  warning = ansi_colours.brightYellow,
  hint = variant_colours.amber,
  interactiveText = ansi_colours.brightBlack,
  comment = variant_colours.vermilion1,
  string = ansi_colours.cyan,
  accent = variant_colours.orange,
  variable = variant_colours.orange,
  definition = ansi_colours.yellow,

  -- Two different colours for punctuation (and 3 variables?)
  keyword = ansi_colours.brightRed,
  delimiter = ansi_colours.brightRed,
  punctuation = variant_colours.vermilion0,

  -- Git
  diffAdd = ansi_colours.brightGreen,
  diffDelete = ansi_colours.brightRed,
  diffChange = variant_colours.orange,
  diffText = variant_colours.amber,

  -- Lualine
  -- I declared these colours in a half-inflexible way
  -- TODO: Make these bar colour definitions better
  barBg = variant_colours.bg2,
  barFg = variant_colours.vermilion1,
  inactiveFg = variant_colours.brightYellow,

  insertBg = variant_colours.vermilion0,
  insertFg = ansi_colours.brightWhite,

  -- No clue what this mode is
  terminalBg = ansi_colours.green,
  terminalFg = ansi_colours.brightWhite,

  commandBg = ansi_colours.green,
  commandFg = ansi_colours.brightWhite,

  visualBg = ansi_colours.yellow,
  visualFg = ansi_colours.brightWhite,

  replaceBg = ansi_colours.red,
  replaceFg = ansi_colours.brightWhite,
}

for key, value in pairs(colorscheme) do
  assert(value ~= nil, ('colorscheme role "%s" is nil'):format(key))
end

return {
  ansi = ansi_colours,
  roles = colorscheme,
}
