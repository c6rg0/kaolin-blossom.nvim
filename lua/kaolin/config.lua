local config = {}

config.defaults = {
  style = "blossom",
  transparent = false,
  italics = {
    comments = true,
    keywords = true,
    functions = true,
    strings = true,
    variables = true,
    bufferline = false,
  },
  overrides = {}, -- untested feature
}

setmetatable(config, { __index = config.defaults })

return config
