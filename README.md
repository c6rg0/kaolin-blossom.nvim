# Koalin colour scheme for neovim (and more)
- Ported from the [emacs-koalin-themes](https://github.com/ogdenwebb/emacs-kaolin-themes)

> Blossom style
![screenshot](screenshot.png)

# Features
- Styles to choose from: blossom
- LSP/Treesitter syntax highlighting support
- Tested lualine support
- Untested bufferline and cmp support
- A config for kitty terminal

# Use
## Download
```lua
vim.pack.add({
  "https://github.com/c6rg0/kaolin.nvim",
})
-- Restart neovim and follow the prompt
```

## Setup and config
```lua
require("kaolin").setup({
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
})
vim.cmd([[colorscheme kaolin]])
```

## To get newer versions of the package
```vim
:lua vim.pack.update()
```

## To do
- Add the rest of the kaolin colour schemes
- Adjust the colour schemes to be as accurate as possible
- Make && include colour pallete images

# Contrubuting
- If you'd like to make a change - add a feature or fix an issue - you can contribute to this repo.
- To do so, make a fork (using github), create changes to your copy and submit a pull request to merge.

