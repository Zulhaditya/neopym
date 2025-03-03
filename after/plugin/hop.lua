require("hop").setup({ keys = "etovxqpdygfblzhckisuran", term_seq_bias = 0.5 })

-- default keymap menggunakan f untuk mencari kata
vim.api.nvim_set_keymap("", "f", "<cmd>lua require'hop'.hint_char1()<cr>", {})

-- pattern matching menggunakan t
vim.api.nvim_set_keymap("n", "t", "<cmd>HopPattern<CR>", { noremap = true })
