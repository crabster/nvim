local cmp = require('cmp')

cmp.setup {
    completion = {
        autocomplete = false,
    },
    mapping = {
        ['<C-n>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
            else
                cmp.complete() -- Trigger manual completion
            end
        end, { 'i' }),

        ['<C-p>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
            else
                cmp.complete() -- Trigger manual completion
            end
        end, { 'i' }),

        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirm the selected item
    }
}
