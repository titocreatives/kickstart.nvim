-- NOTE: could have been activated from main init.lua, prefer custom module with all git functionality though
local git_signs_keybinds = require("kickstart.plugins.gitsigns")

-- NOTE: use Fugitive for the time being as mini.git and mini.diff seem to need a lot of customizing
-- also we got sensible gitsigns keybinds from tj <3
return {
    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
    },
    git_signs_keybinds,
}
