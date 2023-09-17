-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Simple plugins can be specified as strings

    --closing and ending
	use 'rstacruz/vim-closer'
    --  use 'tpope/vim-endwise'

    --Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    --Theme
	use ('EdenEast/nightfox.nvim')
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use ('folke/tokyonight.nvim')
    --treesitter
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'nvim-treesitter/nvim-treesitter-context'
    --harpoon the goat
	use 'ThePrimeagen/harpoon'
    --git
	use 'tpope/vim-fugitive'
    --comments
    use 'winston0410/commented.nvim'
    --undotree
    use 'mbbill/undotree'

    --db
    use 'tpope/vim-dadbod'
    use 'kristijanhusak/vim-dadbod-ui'

    --debugger
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'leoluz/nvim-dap-go' --golang   
    use 'mfussenegger/nvim-dap-python' --python

    --autopairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    --LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip', run = "make install_jsregexp" },     -- Required
            {'rafamadriz/friendly-snippets'},
		}
	}
end)
