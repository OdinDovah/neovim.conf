return {
    "startup-nvim/startup.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim"
    },
    config = function()
        require"startup".setup({
            header = {
                type = "text",
                oldfiles_directory = false,
                align = "center",
                fold_section = false,
                title = "Header",
                margin = 5,
                content = {
                    [[                                                                       ]],
                    [[                                                                     ]],
                    [[       ████ ██████           █████      ██                     ]],
                    [[      ███████████             █████                             ]],
                    [[      █████████ ███████████████████ ███   ███████████   ]],
                    [[     █████████  ███    █████████████ █████ ██████████████   ]],
                    [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
                    [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
                    [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
                    [[                                                                       ]],
                },
                highlight = "Statement",
                default_color = "",
                oldfiles_amount = 0,
            },
            body = {
                type = "mapping",
                oldfiles_directory = false,
                align = "center",
                fold_section = false,
                title = "Basic Commands",
                margin = 5,
                content = {
                    { " Find File", "Telescope find_files", "<leader>ff" },
                    { "󰍉 Find Word", "Telescope live_grep", "<leader>lg" },
                    { " Recent Files", "Telescope oldfiles", "<leader>of" },
                    { " File Browser", "Telescope file_browser", "<leader>fb" },
                    { " Colorschemes", "Telescope colorscheme", "<leader>cs" },
                    { " New File", "lua require'startup'.new_file()", "<leader>nf" },
                },
                highlight = "String",
                default_color = "",
                oldfiles_amount = 0,
            },
            parts = { "header", "body" },
        })
    end
}
