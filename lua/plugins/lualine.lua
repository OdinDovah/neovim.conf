return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = {
                theme = 'nord'
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch'},
                lualine_c = { {'filename', path = 3} },
                lualine_x = {'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
            },
        })
    end
}
