local mocha_pallete = {
    base = "#000000",
    mantle = "#101010",
    crust = "#202020",
    text = "#b1e4f2",
}

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = true,
    styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
    },
    color_overrides = {
        mocha = mocha_pallete,
    },
    highlight_overrides = {
        mocha = function(C)
            return {
                TabLine = { bg = C.surface1, fg = C.text },
                TabLineFill = { bg = C.surface1 },
                TabLineSel = { bg = C.base, fg = C.peach },
                CmpBorder = { fg = C.surface2 },
                Pmenu = { bg = C.none },
                TelescopeBorder = { link = "FloatBorder" },
            }
        end,
    },
})

vim.cmd.colorscheme "catppuccin"
