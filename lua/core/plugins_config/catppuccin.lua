local mocha_pallete = {
    base = "#000000",
    blue = "#F08000", -- tangerine
    crust = "#202020",
    flamingo = "#F2CDCD",
    green = "#4CBB17", -- kelly green
    lavender = "#CD7F32",
    mantle = "#101010",
    maroon = "#c4c4c4",
    mauve = "#FFC000", -- golden yellow
    overlay0 = "#6C7086",
    overlay1 = "#7F849C",
    overlay2 = "#9399B2",
    peach = "#E30B5C",
    pink = "#F5C2E7",
    red = "#F38BA8",
    rosewater = "#c0c0c0",
    sapphire = "#74C7EC",
    sky = "#c0c0c0",
    subtext0 = "#A6ADC8",
    subtext1 = "#BAC2DE",
    surface0 = "#313244",
    surface1 = "#45475A",
    surface2 = "#585B70",
    teal = "#FFC000",
    text = "#c0c0c0",
    yellow = "#FFBF00" -- amber
}

local highlight_overrides = {
    mocha = function(C)
        print(C)
        return {
            CursorLine = { bg = C.surface1 },
            TabLine = { bg = C.surface1, fg = C.text },
            TabLineFill = { bg = C.surface1 },
            TabLineSel = { bg = C.base, fg = C.peach },
            CmpBorder = { fg = C.surface2 },
            Pmenu = { bg = C.none },
            TelescopeBorder = { link = "FloatBorder" },
        }
    end,
}

require("catppuccin").setup({
    flavour = "mocha",          -- latte, frappe, macchiato, mocha
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
    highlight_overrides = highlight_overrides,
})

vim.cmd.colorscheme "catppuccin"
