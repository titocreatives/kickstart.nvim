return {
    {
        "uga-rosa/ugaterm.nvim",
        event = "VeryLazy",
        config = function()
            vim.keymap.set("n", "<leader>T",
                "<cmd>:UgatermOpen<CR>",
                { desc = "[T]erminal: open" }
            )
        end
    },
}
