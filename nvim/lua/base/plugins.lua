local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- LSP & Mason & CMP
	{
		{'williamboman/mason.nvim'}, -- Mason
		{'williamboman/mason-lspconfig.nvim'}, -- Mason and lsp layer

		{
			'neovim/nvim-lspconfig',
			dependencies = {
				"SmiteshP/nvim-navic",
                "MunifTanjim/nui.nvim"
			},
		}, -- Lspconfig
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'hrsh7th/cmp-cmdline'},
		{'hrsh7th/nvim-cmp'},

		{'nvim-treesitter/nvim-treesitter'},
		{'nvim-tree/nvim-web-devicons'},

		{
		  'nvim-telescope/telescope.nvim', branch = '0.1.x',
		  dependencies = {
			  'nvim-lua/plenary.nvim',
			  'brookhong/telescope-pathogen.nvim',
		  }
		},

		{'rmagatti/goto-preview'},
		{'SmiteshP/nvim-navbuddy'},
		{'hedyhli/outline.nvim'},
		{'aznhe21/actions-preview.nvim'},
		{
		  "folke/trouble.nvim",
		  branch = "main",
		},
		{"nvim-neo-tree/neo-tree.nvim"},
		{"nvim-lualine/lualine.nvim"},
		{"akinsho/bufferline.nvim"},

		{"catppuccin/nvim", name = "catppuccin", priority = 1000},

		{
			"iamcco/markdown-preview.nvim", 
			cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
			ft = { "markdown" },
			build = function() vim.fn["mkdp#util#install"]() end,
		},

		{'mrcjkb/rustaceanvim', lazy=false},
		{
			'windwp/nvim-autopairs',
			event = "InsertEnter",
			config = true
		},

		{
			'numToStr/Comment.nvim',
			opts = {},
			lazy = false,
		},

		{'linrongbin16/lsp-progress.nvim'},
		{
			"folke/todo-comments.nvim",
			dependencies = { "nvim-lua/plenary.nvim" }
		},
		{ "lukas-reineke/indent-blankline.nvim", main = "ibl" },
		{ "ojroques/nvim-bufdel" },
	},
})
