return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            cond = function()
                return vim.fn.executable 'make' == 1
            end
        },
        { 'nvim-telescope/telescope-ui-select.nvim' },
        { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>sv', builtin.vim_options, { desc = 'Telescope vim options' })
        pcall(require('telescope').load_extension, 'fzf')
        pcall(require('telescope').load_extension, 'ui-select')
        extensions = {
            ['ui-select'] = {
                require('telescope.themes').get_dropdown(),
            },
        }
    end,
}
