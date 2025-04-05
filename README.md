# Introduction

This repo hosts my Nvim configuration for Linux and macOS
`init.lua` is the config entry point for terminal Nvim.

My configurations are heavily documented to make it as clear as possible.
While you can clone the whole repository and use it, it is not recommended though.
Good configurations are personal. Everyone should have his or her unique config file.
You are encouraged to copy from this repo the part you want and add it to your own config.

To reduce the possibility of breakage, **this config is only maintained for [the latest nvim stable release](https://github.com/neovim/neovim/releases/tag/stable).
No effort is spent on maintaining backward compatibility.**

# Install and setup

# Required

## All
- nodejs
- npm
- rust
- prettier

You should always install `rust` using `rustup`

## macOS
- Xcode (at least the commend line tools)
- homebrew

# Install required binaries

```bash
brew install neovim
brew install pyright
brew install rust-analyzer
brew install stylua
brew install black
brew install isort
brew install node
brew install prettierd
npm install -g vls
npm install -g biomejs/biome
npm install -g vim-language-server
```

Then copy this folder as `~/.config/nvim` and start neovim. That's all

# Features #

+ Animated GUI style notification via [nvim-notify](https://github.com/rcarriga/nvim-notify).
+ Asynchronous code execution via [asyncrun.vim](https://github.com/skywind3000/asyncrun.vim).
+ Autoformatting/Prety via [conform](https://github.com/stevearc/conform.nvim)
+ Beautiful colorscheme via [sainnhe/gruvbox-material](https://github.com/sainnhe/gruvbox-material) and other colorschemes.
+ Beautiful statusline via [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim).
+ Better escaping from insert mode via [better-escape.vim](https://github.com/nvim-zh/better-escape.vim).
+ Better quickfix list with [nvim-bqf](https://github.com/kevinhwang91/nvim-bqf).
+ Code editing using true nvim inside browser via [firenvim](https://github.com/glacambre/firenvim).
+ Code folding with [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) and [statuscol.nvim](https://github.com/luukvbaal/statuscol.nvim)
+ Code highlighting via [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
+ Code, snippet, word auto-completion via [nvim-cmp](https://github.com/hrsh7th/nvim-cmp).
+ Command line auto-completion via [wilder.nvim](https://github.com/gelguy/wilder.nvim).
+ Fast buffer jump via [hop.nvim](https://github.com/phaazon/hop.nvim).
+ Faster code commenting via [vim-commentary](https://github.com/tpope/vim-commentary).
+ Faster matching pair insertion and jump via [nvim-autopairs](https://github.com/windwp/nvim-autopairs).
+ File tree explorer via [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua).
+ Flutter-Support with [flutter-tools](https://github.com/nvim-flutter/flutter-tools.nvim)
+ Git integration via [vim-fugitive](https://github.com/tpope/vim-fugitive).
+ GitGutter vwith [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
+ Language server protocol (LSP) support via [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig).
+ Plugin management via [Lazy.nvim](https://github.com/folke/lazy.nvim).
+ Powerful snippet insertion via [Ultisnips](https://github.com/SirVer/ultisnips).
+ Show search index and count with [nvim-hlslens](https://github.com/kevinhwang91/nvim-hlslens).
+ Smarter and faster matching pair management (add, replace or delete) via [vim-sandwich](https://github.com/machakann/vim-sandwich).
+ Sonokai Colorscheme
+ Tags navigation via [vista](https://github.com/liuchengxu/vista.vim).
+ Transparent background with [transpert](https://github.com/tribela/vim-transparent/)
+ Ultra-fast project-wide fuzzy searching via [fzf-lua](https://github.com/ibhagwan/fzf-lua).
+ Undo management via [vim-mundo](https://github.com/simnalamburt/vim-mundo)
+ User-defined mapping hint via [which-key.nvim](https://github.com/folke/which-key.nvim).
+ Yankring [yanky.nvim](https://github.com/gbprod/yanky.nvim)

# Shortcuts

Some of the shortcuts I use frequently are listed here. In the following shortcuts, `<leader>` represents ASCII character `,`.

| Shortcut          | Mode          | platform        | Description                                                              |
|-------------------|---------------|-----------------|--------------------------------------------------------------------------|
| `<leader>ff`      | Normal        | Linux/macOS/Win | Fuzzy file searching in a floating window                                |
| `<leader>fh`      | Normal        | Linux/macOS/Win | Fuzzy help file grepping in a floating window                            |
| `<leader>fg`      | Normal        | Linux/macOS/Win | Fuzzy project-wide grepping in a floating window                         |
| `<leader>ft`      | Normal        | Linux/macOS/Win | Fuzzy buffer tag searching in a floating window                          |
| `<leader>fb`      | Normal        | Linux/macOS/Win | Fuzzy buffer switching in a floating window                              |
| `<leader><Tab>`   | Normal        | Linux/macOS/Win | Remove trailing white spaces                                             |
| `<leader>v`       | Normal        | Linux/macOS/Win | Reselect last pasted text                                                |
| `<leader>ev`      | Normal        | Linux/macOS/Win | Edit Nvim config in a new tabpage                                        |
| `<leader>sv`      | Normal        | Linux/macOS/Win | Reload Nvim config                                                       |
| `<leader>st`      | Normal        | Linux/macOS/Win | Show highlight group for cursor text                                     |
| `<leader>q`       | Normal        | Linux/macOS/Win | Quit current window                                                      |
| `<leader>Q`       | Normal        | Linux/macOS/Win | Quit all window and close Nvim                                           |
| `<leader>w`       | Normal        | Linux/macOS/Win | Save current buffer content                                              |
| `<leader>y`       | Normal        | Linux/macOS/Win | Copy the content of entire buffer to default register                    |
| `<leader>cl`      | Normal        | Linux/macOS/Win | Toggle cursor column                                                     |
| `<leader>cd`      | Normal        | Linux/macOS/Win | Change current working directory to to the dir of current buffer         |
| `<space>t`        | Normal        | Linux/macOS/Win | Toggle tag window (show project tags in the right window)                |
| `<leader>gs`      | Normal        | Linux/macOS/Win | Show Git status result                                                   |
| `<leader>gw`      | Normal        | Linux/macOS/Win | Run Git add for current file                                             |
| `<leader>gc`      | Normal        | Linux/macOS/Win | Run git commit                                                           |
| `<leader>gpl`     | Normal        | Linux/macOS/Win | Run git pull                                                             |
| `<leader>gpu`     | Normal        | Linux/macOS/Win | Run git push                                                             |
| `<leader>gbd`     | Normal        | Linux/macOS/Win | Delete a branch                                                          |
| `<leader>gbn`     | Normal        | Linux/macOS/Win | Create a new branch                                                      |
| `<leader>gl`      | Normal/Visual | Linux/macOS/Win | Get perm link for current/visually-select lines                          |
| `<leader>gbr`     | Normal        | macOS           | Browse current git repo in browser                                       |
| `<leader>gb`      | Visual        | macOS           | Blame current line                                                       |
| `<F9>`            | Normal        | Linux/macOS/Win | Compile&run current source file (for C++, LaTeX, Lua, Python)            |
| `<F11>`           | Normal        | Linux/macOS/Win | Toggle spell checking                                                    |
| `<F12>`           | Normal        | Linux/macOS/Win | Toggle paste mode                                                        |
| `\x`              | Normal        | Linux/macOS/Win | Close location or quickfix window                                        |
| `\d`              | Normal        | Linux/macOS/Win | Close current buffer and go to previous buffer                           |
| `{count}gb`       | Normal        | Linux/macOS/Win | Go to buffer `{count}` or next buffer in the buffer list.                |
| `{operator}iB`    | Normal        | Linux/macOS/Win | Operate in the whole buffer, `{operator}` can be `v`, `y`, `c`, `d` etc. |
| `Alt-k`           | Normal        | Linux/macOS/Win | Move current line or selected lines up                                   |
| `Alt-j`           | Normal        | Linux/macOS/Win | Move current line or selected lines down                                 |
| `Alt-m`           | Normal        | macOS/Win       | Markdown previewing in system browser                                    |
| `Alt-Shift-m`     | Normal        | macOS/Win       | Stopping Markdown previewing in system browser                           |
| `ctrl-u`          | Insert        | Linux/macOS/Win | Turn word under cursor to upper case                                     |
| `ctrl-t`          | Insert        | Linux/macOS/Win | Turn word under cursor to title case                                     |
| `jk`              | Insert        | Linux/macOS/Win | Return to Normal mode without lagging                                    |

# Custom commands

In addition to commands provided by various plugins, I have also created some custom commands for personal use.

| command      | description                                                             | example                        |
|--------------|-------------------------------------------------------------------------|--------------------------------|
| `Redir`      | capture command output to a tabpage for easier inspection.              | `Redir hi`                     |
| `Edit`       | edit multiple files at the same time, supports globing                  | `Edit *.vim`                   |
| `Datetime`   | print current date and time or convert Unix time stamp to date and time | `Datetime 12345` or `Datetime` |
| `JSONFormat` | format a JSON file                                                      | `JSONFormat`                   |
| `CopyPath`   | copy current file path to clipboard                                     | `CopyPath relative`            |
