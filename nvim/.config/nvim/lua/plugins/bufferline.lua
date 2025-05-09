return {
    "akinsho/bufferline.nvim",
    config = function()
        require("bufferline").setup({
            options = { mode = "buffers", separator_style = "slant" }
        })
    end
}
