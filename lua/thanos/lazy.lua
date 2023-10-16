local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
vim.opt.rtp:prepend(lazypath)

local ok, lazy = pcall(require, 'lazy')

if not ok then
    local msg = 'You need to install the plugin manager lazy.nvim\n'
    .. 'in this folder: ' .. lazypath

    print(msg)
    return
end

lazy.setup({
    --- Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    "rebelot/kanagawa.nvim",
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.3",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    "ThePrimeagen/harpoon",
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
})
