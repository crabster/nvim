local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd.packadd "packer.nvim"
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use "wbthomason/packer.nvim"

    -- Color scheme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Pretty icons
    use "nvim-tree/nvim-web-devicons"

    -- Bottom status bar
    use "nvim-lualine/lualine.nvim"

    -- Easy commenting of text
    use "numToStr/Comment.nvim"

    -- Colored backgrounds of RGB numbers corresponding to their values
    use "norcalli/nvim-colorizer.lua"

    -- AST code parser
    use "nvim-treesitter/nvim-treesitter"
    use "nvim-treesitter/playground"

    -- Package manager for language specific tools
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    -- Fuzzy finder
    use {
        "nvim-telescope/telescope.nvim",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    -- Visible indentation
    use "lukas-reineke/indent-blankline.nvim"

    use {
        'Wansmer/treesj',
        requires = { 'nvim-treesitter/nvim-treesitter' },
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            { 'neovim/nvim-lspconfig' },
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    -- use {
    --     "~/projects/collama.nvim",
    --     requires = { { "nvim-lua/plenary.nvim" } }
    -- }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
