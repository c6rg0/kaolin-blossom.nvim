# Koalin blossom colour scheme
- Ported from the [emacs-koalin-themes](https://github.com/ogdenwebb/emacs-kaolin-themes)

# Use
## Download
```lua
vim.pack.add({
  -- Previous inputs
  "https://github.com/c6rg0/kaolin-blossom.nvim",
})
```

## Setup and config
```lua
require("kaolin-blossom").setup({
  transparent = false,
  italics = {
    comments = true,
    keywords = true,
    functions = true,
    strings = true,
    variables = true,
    bufferline = false,
  },
})
vim.cmd([[colorscheme kaolin-blossom]])
```

## To get newer versions of the package
```vim
:lua vim.pack.update()
```

# Features
- LSP/Treesitter (afaik) support
- Lualine support
- An extra kitty terminal config

## To do
- Include showcase images
- Include colour pallete image
- Possibly add the rest of the kaolin colours

