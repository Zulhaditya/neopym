-- lihat detail opsi = :help options

vim.g.mapleader = " "                                -- setting leader key menjadi spasi
vim.g.maplocalleader = " "                           -- setting leader key local menjadi spasi
vim.o.clipboard = "unnamedplus"                      -- setting clipboard
vim.o.list = false                                   -- setting list
vim.o.nu = true                                      -- setting nu
vim.o.relativenumber = true                          -- setting relative number
vim.o.signcolumn = "yes"                             -- setting column
vim.o.tabstop = 2                                    -- setting tab
vim.o.softtabstop = 2                                -- setting soft tabstop
vim.o.shiftwidth = 2                                 -- setting ukuran shift width
vim.o.expandtab = true                               -- setting expandtab
vim.smartindent = true                               -- setting smart indentasi
vim.smartcase = true                                 -- setting smart case
vim.o.wrap = false                                   -- setting wrap text
vim.o.updatetime = 50                                -- setting update time
vim.o.termguicolors = true                           -- setting terminal colors
vim.o.mouse = "a"                                    -- setting mouse agar dapat digunakan di nvim
vim.o.scrolloff = 8                                  -- setting relative number selalu di angka 8
vim.o.signcolumn = "yes"                             -- setting signcolumn
vim.o.fileencoding = "utf-8"                         -- setting encoding file
vim.showmode = false                                 -- setting untuk nonaktifkan -- INSERT --
vim.o.undofile = true                                -- setting undo file
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir" -- setting undodir
vim.o.ignorecase = true                              -- setting ignore case untuk search patterns
vim.o.hlsearch = false                               -- setting hlsearch
vim.o.incsearch = true                               -- setting hlsearch
vim.o.splitbelow = true                              -- setting mode split ke bawah
vim.o.splitright = true                              -- setting split ke kanan
vim.o.swapfile = false                               -- setting untuk tidak membuat swapfile
vim.g.vimwiki_list = {                               -- setting vimwiki
  {
    path = '~/Notes/',
    syntax = 'markdown',
    ext = 'md'
  }
}
vim.cmd([[
  set winbar=%f
]])
