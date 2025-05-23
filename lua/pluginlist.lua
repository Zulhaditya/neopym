return {
  -- install vague theme
  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup({
        -- optional configuration here
        transparent = true,
        style = {
          -- "none" is the same thing as default. But "italic" and "bold" are also valid options
          boolean = "none",
          number = "none",
          float = "none",
          error = "none",
          comments = "none",
          conditionals = "none",
          functions = "none",
          headings = "bold",
          operators = "none",
          strings = "none",
          variables = "none",

          -- keywords
          keywords = "none",
          keyword_return = "none",
          keywords_loop = "none",
          keywords_label = "none",
          keywords_exception = "none",

          -- builtin
          builtin_constants = "none",
          builtin_functions = "none",
          builtin_types = "none",
          builtin_variables = "none",
        },
        colors = {
          -- func = "#bc96b0",
          -- keyword = "#787bab",
          -- -- string = "#d4bd98",
          -- string = "#8a739a",
          -- -- string = "#f2e6ff",
          -- -- number = "#f2e6ff",
          -- -- string = "#d8d5b1",
          -- number = "#8f729e",
          -- -- type = "#dcaed7",
        },
      })
    end,
  },

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
    "windwp/nvim-ts-autotag",
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
