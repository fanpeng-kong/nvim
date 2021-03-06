--If you want to automatically ensure that packer.nvim is installed on any machine you clone your configuration to,
--add the following snippet (which is due to @Iron-E) somewhere in your config before your first usage of packer:
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end


return require('packer').startup{function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { -- A collection of common configurations for Neovim's built-in language server client
          'neovim/nvim-lspconfig',
          config = [[ require('plugins/lspconfig') ]]
  }
  use {
          'williamboman/mason.nvim',
          'williamboman/mason-lspconfig.nvim',
					require("mason").setup(),
					require("mason-lspconfig").setup({
						ensure_installed = {"sumneko_lua", "rust_analyzer", "gopls", "pylsp", "jdtls", "clangd"},
					}),
          --config = [[ require('plugins/mason_nvim') ]]
  }
  use { -- vscode-like pictograms for neovim lsp completion items Topics
          'onsails/lspkind-nvim',
          config = [[ require('plugins/lspkind') ]]
  }
  use { -- Utility functions for getting diagnostic status and progress messages from LSP servers, for use in the Neovim statusline
          'nvim-lua/lsp-status.nvim',
          config = [[ require('plugins/lspstatus') ]]
  }
  use { -- A completion plugin for neovim coded in Lua.
        'hrsh7th/nvim-cmp',
        requires = {
          "hrsh7th/cmp-nvim-lsp",           -- nvim-cmp source for neovim builtin LSP client
          "hrsh7th/cmp-nvim-lua",           -- nvim-cmp source for nvim lua
          "hrsh7th/cmp-buffer",             -- nvim-cmp source for buffer words.
          "hrsh7th/cmp-path",               -- nvim-cmp source for filesystem paths.
          "hrsh7th/cmp-calc",               -- nvim-cmp source for math calculation.
          "saadparwaiz1/cmp_luasnip",       -- luasnip completion source for nvim-cmp
        },
        config = [[ require('plugins/cmp') ]],
  }
  use { -- Snippet Engine for Neovim written in Lua.
        'L3MON4D3/LuaSnip',
        requires = {
          "rafamadriz/friendly-snippets",   -- Snippets collection for a set of different programming languages for faster development.
        },
        config = [[ require('plugins/luasnip') ]],
  }
  use { -- colorscheme gruvbox
        'ellisonleao/gruvbox.nvim'
  }
  use { -- Nvim Treesitter configurations and abstraction layer
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = [[ require('plugins/treesitter') ]]
  }
	use { -- A super powerful autopairs for Neovim. It support multiple character.
       'windwp/nvim-autopairs',
       config = [[ require('plugins/autopairs') ]]
	}
  use {
			 'nvim-lualine/lualine.nvim',
			 requires = { 'kyazdani42/nvim-web-devicons', opt = true },
			 config = [[ require('plugins/lualine') ]]
  }
-- 	use {
-- 		'romgrk/barbar.nvim',
-- 		requires = {'kyazdani42/nvim-web-devicons'},
-- 		config = [[ require('plugins/barbar') ]],
-- 	}
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      tag = 'nightly', -- optional, updated every week. (see issue #1193)
      config = [[ require('plugins/tree') ]]
  }
  use { -- Indent line
		'lukas-reineke/indent-blankline.nvim'
	}
  use { -- Tag viewer
		'preservim/tagbar'
	}
  use {
    'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/plenary.nvim'},
		config = [[ require('plugins/telescope') ]]
  }
	use { -- floating terminal window
		'voldikss/vim-floaterm'
	}
  use { -- git labels
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }
	use { -- golang
		'ray-x/go.nvim',
		require('go').setup(),
	}
end, config = {
  -- Move to lua dir so impatient.nvim can cache it
  compile_path = vim.fn.stdpath('config')..'/plugin/packer_compiled.lua'

  }
}
