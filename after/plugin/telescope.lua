-- setup telescope
require("telescope").setup({
  extension = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})       -- keymap untuk mencari file
vim.keymap.set("n", "<C-f>", builtin.live_grep, {})        -- keymap untuk mencari code di satu file
vim.keymap.set("n", "<leader>ff", builtin.grep_string, {}) -- keymap untuk satu code di seluruh working directory
vim.keymap.set("n", "-", builtin.buffers, {})              -- keymap untuk satu code di seluruh working directory
vim.keymap.set("n", "/", builtin.current_buffer_fuzzy_find, {})
-- load extension fzf
require("telescope").load_extension("fzf")
