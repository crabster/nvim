vim.g.codeium_disable_bindings = true
--vim.g.codeium_manual = true

vim.keymap.set('i', '<C-k>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
    { remap = true, expr = true, silent = true })
vim.keymap.set('i', '<C-l>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
vim.keymap.set('i', '<Tab>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })


vim.keymap.set('i', '<Esc>', function()
    if vim.fn['codeium#Clear']() ~= '' then
        return vim.fn['codeium#Clear']()
    else
        return '<Esc>'
    end
end, { expr = true, silent = true })
