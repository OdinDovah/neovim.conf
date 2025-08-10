return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false, -- neo-tree will lazily load itself,
        opts = {
            filesystem = {
                filtered_items = {
                    visible = true,
                },
            },
        },

        config = function()
            vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
            require("neo-tree").setup({
                event_handlers = {

                    {
                        event = "file_open_requested",
                        handler = function()
                            -- auto close
                            -- vim.cmd("Neotree close")
                            -- OR
                            require("neo-tree.command").execute({ action = "close" })
                        end
                    },

                }
            })
        end
    }
}
