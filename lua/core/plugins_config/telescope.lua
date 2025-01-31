local builtin = require("telescope.builtin")

vim.keymap.set("n", "<Space>fd", builtin.find_files, {})
vim.keymap.set("n", "<Space>ff", builtin.git_files, {})
vim.keymap.set("n", "<Space>fg", builtin.live_grep, {})
vim.keymap.set("n", "<Space>fh", builtin.help_tags, {})
