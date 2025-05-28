return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        {
            "<leader>a",
            function()
                require("harpoon"):list():add()
            end,
        },
        {
            "<leader>A",
            function()
                require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
            end,
        },
    }
}
