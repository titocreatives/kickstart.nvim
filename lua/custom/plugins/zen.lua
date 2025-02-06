local window_opts = {
   width = .66,666,
}

--- @type LazySpec
local zen = {
    "folke/zen-mode.nvim",
    event = "VeryLazy",
    opts = {
        -- 
        on_open = function(_win)
            -- TODO: start optional Pomodoro Timer?   
            print(_win.width)
        end,
    },
    config = function ()
        vim.keymap.set("n", "<leader>z", function ()
            require("zen-mode").toggle({
                window = window_opts
            })
        end, { desc = "enter [Z]en Mode"})
    end
}

return {
    { "folke/twilight.nvim", opts = {}},
    zen
}
