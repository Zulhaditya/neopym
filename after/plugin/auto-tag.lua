-- setup auto tag
require("nvim-ts-autotag").setup({
  enable = true,
  enable_rename = true,
  enable_close = true,
  enable_close_on_slash = true,
  fileypes = { "javascript", "javascriptreact", "jsx" },
})
