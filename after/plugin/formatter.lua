require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will use the first available formatter in the list
    javascript = { "prettier_d" },
    -- Formatters can also be specified with additional options
    python = {
      formatters = { "isort", "black" },
      -- Run formatters one after another instead of stopping at the first success
      run_all_formatters = true,
    },
  },
  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 500,
  },
})
