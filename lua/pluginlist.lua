return {

	-- instal onedark theme
	{
		"navarasu/onedark.nvim",
	},
	-- install plugin comment
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	},

	-- install lsp-zero
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	},

	-- install plugin treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	-- install plugin autopair
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},

	-- install plugin telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- TASK : install plugin telescope fzf untuk performa lebih cepat
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
	},

	-- install plugin untuk opsi tab
	{ "moll/vim-bbye" },

	-- install plugin navigasi ke kata tertentu
	{
		"phaazon/hop.nvim",
		lazy = true,
	},

	-- install plugin dashboard
	{
		"goolord/alpha-nvim",
		lazy = true,
	},

	-- install plugin trouble untuk cek kesalahan kode
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},

	-- install plugin untuk auto close tag
	{
		"nvim-ts-autotag",
		opts = {
			-- Defaults
			enable_close = true, -- Auto close tags
			enable_rename = true, -- Auto rename pairs of tags
			enable_close_on_slash = false, -- Auto close on trailing </
		},
	},

	-- install plugin formatter
	{
		"stevearc/conform.nvim",
		opts = {},
	},

	-- install plugin symbols outline
	{
		"simrat39/symbols-outline.nvim",
		config = function()
			require("symbols-outline").setup()
		end,
	},

	-- install plugin untuk test api

	{
		"diepm/vim-rest-console",
	},
}
