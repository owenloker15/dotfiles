return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "cpp", "c", "lua", "vim", "bash" },
            highlight = { enable = true },
        })
    end
}
