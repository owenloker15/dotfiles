return {
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({ ensure_installed = { "clangd" } })
        local lspconfig = require("lspconfig")
        lspconfig.clangd.setup({})
    end
}
