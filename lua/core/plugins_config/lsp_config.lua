require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls" }
})

local telescope = require('telescope.builtin')

local on_attach = function(_, _)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})
    vim.keymap.set("n", "<leader>gr", telescope.lsp_references, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}
