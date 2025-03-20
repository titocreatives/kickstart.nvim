return {{
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon add Buffer" })
        vim.keymap.set("n", "<C-v>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon toogle list"})

        vim.keymap.set("n", "<C-q>", function() harpoon:list():select(1) end, {desc = "Harpoon select 1"})
        vim.keymap.set("n", "<C-a>", function() harpoon:list():select(2) end, {desc = "Harpoon select 2"})
        vim.keymap.set("n", "<C-s>", function() harpoon:list():select(3) end, {desc = "Harpoon select 3"})
        vim.keymap.set("n", "<C-n>", function() harpoon:list():select(4) end, {desc = "Harpoon select 4"})
    end,
}}
