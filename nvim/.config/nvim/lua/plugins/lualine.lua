return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require('lualine').setup({
            options = {
                theme = 'catppuccin',
                section_separators = {'', ''},
                component_separators = {'', ''},
                disabled_filetypes = {'NvimTree', 'lazy', 'packer'}, 
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { 'filetype', 'encoding', 'progress' },
                lualine_y = { 'location' },
                lualine_z = { 'time' },
            },
            extensions = { 'fugitive', 'nvim-tree' },
        })
    end
}
