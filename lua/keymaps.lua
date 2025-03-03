local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- shortcut nama fungsi
local keymap = vim.api.nvim_set_keymap

-- definisikan spasi sebagai leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

---------------- NORMAL ----------------------
-- save
keymap("n", "<C-S>", ":w<cr>", opts)

-- close
keymap("n", "<leader>q", ":Bdelete<cr>", opts)

-- buka dashboard
keymap("n", "<leader>h", ":Alpha<cr>", opts)

-- buka file explorer
keymap("n", "<leader>e", ":Neotree toggle<cr>", opts)

-- buka git status neotree
keymap("n", "<leader>gs", ":Neotree float git_status<cr>", opts)

-- ke awal dan akhir line
keymap("n", "<M-h>", "^", opts)
keymap("n", "<M-l>", "$", opts)

-- navigasi buffer
keymap("n", "<S-h>", ":bprev<cr>", opts)
keymap("n", "<S-l>", ":bnext<cr>", opts)

-- view cursor selalu di tengah
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- search selalu di tengah
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- off Q
keymap("n", "Q", "<nop>", opts)

-- REST console
keymap("n", "<leader>tt", ":call VrcQuery()<CR>", opts)

keymap("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

---------------- INSERT ----------------------
-- jj untuk keluar dari insert mode
keymap("i", "jj", "<ESC>", opts)

-- save file
keymap("i", "<C-S>", "<ESC>:w<cr>", opts)

---------------- VISUAL ----------------------
-- indentasi tab saat mode visual
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text ke atas dan bawah
keymap("v", "<A-j>", ":m '>+1<CR>gv-gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv-gv", opts)
keymap("v", "p", '"_dP', opts)

---------------- VBLOCK ----------------------
-- Move text ke atas dan bawah
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
