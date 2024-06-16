require("treesj").setup({
    max_join_length = 98,
})

vim.keymap.set('n', 'gs', function()
    require('treesj').toggle({ split = { recursive = true } })
end)
