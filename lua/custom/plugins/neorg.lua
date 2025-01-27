vim.wo.foldlevel = 99
vim.wo.conceallevel = 2

return {{
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    opts = {
        load = {
            ["core.defaults"] = {}, -- Loads default behaviour
            ["core.concealer"] = {}, -- Adds pretty icons to your documents
            ["core.dirman"] = { -- Manages Neorg workspaces
                config = {
                    workspaces = {
                        notes = "~/norg/notes",
                        projects = "~/norg/projects"
                    },
                    default_workspace = "notes",
                },
            },
        },
    },
}}
