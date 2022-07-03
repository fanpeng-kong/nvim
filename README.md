# Neovim configuration

Neovim configuration using Lua.

## Installation

1. Install [Neovim v0.7.x](https://github.com/neovim/neovim/releases/latest).

2. Install [Nerd fonts](https://www.nerdfonts.com/font-downloads)

3. Install [npm](https://github.com/npm/cli) for download packages of LSP language servers, see: [LSP Configuration](#lsp-configuration).

4. Backup current `nvim` folder

```sh
mv ~/.config/nvim ~/.config/nvim.backup
```

5. Download this respository and copy it to the `${HOME}/.config` directory

```sh
git clone https://github.com/fanpeng-kong/nvim ~/.config/nvim
cd ~/.config/nvim
```

6. Run Neovim with PackerSync command

```sh
nvim --headless -c `PackerSync`
```

## Directory structure

The directory structure of the Neovim configuration looks like below:

```
.
├── README.md
├── init.lua
├── lua
│   ├── commands.lua
│   ├── configs.lua
│   ├── keymaps.lua
│   ├── plugins
│   │   ├── autopairs.lua
│   │   ├── cmp.lua
│   │   ├── lsp_installer_nvim.lua
│   │   ├── lspconfig.lua
│   │   ├── lspkind.lua
│   │   ├── lspstatus.lua
│   │   ├── lualine.lua
│   │   ├── luasnip.lua
│   │   ├── telescope.lua
│   │   ├── tree.lua
│   │   └── treesitter.lua
│   ├── plugins.lua
│   └── utils.lua
└── plugin
    └── packer_compiled.lua
```

## Plugins

[packer.nvim](https://github.com/wbthomason/packer.nvim) -  A use-package inspired plugin manager for Neovim

[feline.nvim](https://github.com/feline-nvim/feline.nvim) - A minimal, stylish and customizable statusline for Neovim written in Lua

[nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer/) - Neovim plugin that allows you to manage LSP servers

[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - A collection of common configurations for Neovim's built-in language server client

[nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Auto completion plugin

[LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet Engine for Neovim written in Lua

[nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) - A File Explorer written In Lua

[indentBlankline](https://github.com/lukas-reineke/indent-blankline.nvim) - Adds indentation guides to all lines (including empty lines)

[nvim-autopairs](https://github.com/windwp/nvim-autopairs) - A super powerful autopairs for Neovim

[Tagbar](https://github.com/preservim/tagbar) - A class outline viewer for Vim

[gitsigns](https://github.com/lewis6991/gitsigns.nvim) - Super fast git decorations implemented purely in lua/teal

[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Nvim Treesitter configurations and abstraction layer

[alpha-nvim](https://github.com/goolord/alpha-nvim) - A fast and highly customizable greeter for neovim.

[nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - A Lua fork of vim-devicons


## Resources

- https://xlwe.medium.com/setting-up-neovim-for-web-development-70c57c3d7d61
- https://github.com/miltonllera/neovim-lua-config
- https://github.com/nanotee/nvim-lua-guide
- https://github.com/brainfucksec/neovim-lua

