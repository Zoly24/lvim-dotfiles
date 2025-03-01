-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.relativenumber = true

vim.cmd("set cc=100")

lvim.colorscheme = "lunar"
lvim.builtin.lualine.style = "default"
lvim.transparent_window = true

lvim.plugins ={
    {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
    require('neoscroll').setup({
            -- All these keys will be mapped to their corresponding default scrolling animation
            mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
            '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
            hide_cursor = true,          -- Hide cursor while scrolling
            stop_eof = true,             -- Stop at <EOF> when scrolling downwards
            use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
            respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
            cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
            easing_function = nil,        -- Default easing function
            pre_hook = nil,              -- Function to run before the scrolling animation starts
            post_hook = nil,              -- Function to run after the scrolling animation ends
            })
    end
    },
    {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
        require("todo-comments").setup()
    end,
    },
    { "lunarvim/colorschemes" },
    { "folke/tokyonight.nvim" },
    { "shaunsingh/nord.nvim" },
}
