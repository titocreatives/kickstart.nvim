-- NOTE: could have been activated from main init.lua, prefer custom module with all git functionality though
local git_signs_keybinds = require("kickstart.plugins.gitsigns")

-- NOTE: misc git telescope bindings
-- TODO: errors if nvim not started in git dir: handle gracefully
vim.keymap.set('n', '<leader>Gs', ":Telescope git_status<CR>", { desc = '[G]it [s]tatus w/ TS' })
vim.keymap.set("n", "<leader>Gb", ":Telescope git_branches<CR>", { desc = '[G]it [b]ranch w/ TS', silent = true, noremap = true})

-- NOTE: use Fugitive for the time being as mini.git and mini.diff seem to need a lot of customizing
-- also we got sensible gitsigns keybinds from TJ <3
vim.keymap.set('n', '<leader>GS', ":Git<CR>", { desc = '[G]it [S]tatus' })
vim.keymap.set('n', '<leader>Gc', ":Git commit<CR>", { desc = '[G]it [c]ommit' })
vim.keymap.set('n', '<leader>Gd', ":Git difftool -y<CR>", { desc = '[G]it [d]ifftool' })
vim.keymap.set('n', '<leader>Gm', ":Git mergetool<CR>", { desc = '[G]it [m]ergetool' })

return {
    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
    },
    git_signs_keybinds,
}
