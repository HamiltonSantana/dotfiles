-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions

    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets"

    use "hrsh7th/cmp-nvim-lsp"

    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
    use "tpope/vim-fugitive"
    use "jamestthompson3/nvim-remote-containers"
    use "nvim-treesitter/nvim-treesitter"

    use({
          "epwalsh/obsidian.nvim",
          tag = "*",  -- recommended, use latest release instead of latest commit
          requires = {
            -- Required.
            "nvim-lua/plenary.nvim",

            -- see below for full list of optional dependencies 👇
          },
          config = function()
            require("obsidian").setup({
              workspaces = {
                {
                  name = "personal",
                  path = "~/Brain/",
                },
              },
              picker = {
                  -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
                  name = "telescope.nvim",
                  -- Optional, configure key mappings for the picker. These are the defaults.
                  -- Not all pickers support all mappings.
                  note_mappings = {
                      -- Create a new note from your query.
                      new = "<C-x>",
                      -- Insert a link to the selected note.
                      insert_link = "<C-l>",
                  },
                  tag_mappings = {
                      -- Add tag(s) to current note.
                      tag_note = "<C-x>",
                      -- Insert a tag at the current location.
                      insert_tag = "<C-l>",
                  },
              },
              ui = {
                  enable = true,  -- set to false to disable all additional syntax features
                  update_debounce = 200,  -- update delay after a text change (in milliseconds)
                  max_file_length = 5000,  -- disable UI features for files with more than this many lines
                  -- Define how various check-boxes are displayed
                  checkboxes = {
                      -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
                      [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
                      ["x"] = { char = "", hl_group = "ObsidianDone" },
                      [">"] = { char = "", hl_group = "ObsidianRightArrow" },
                      ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
                      ["!"] = { char = "", hl_group = "ObsidianImportant" },
                      -- Replace the above with this if you don't have a patched font:
                      -- [" "] = { char = "☐", hl_group = "ObsidianTodo" },
                      -- ["x"] = { char = "✔", hl_group = "ObsidianDone" },

                      -- You can also add more custom ones...
                  },
                  -- Use bullet marks for non-checkbox lists.
                  bullets = { char = "•", hl_group = "ObsidianBullet" },
                  external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
                  -- Replace the above with this if you don't have a patched font:
                  -- external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
                  reference_text = { hl_group = "ObsidianRefText" },
                  highlight_text = { hl_group = "ObsidianHighlightText" },
                  tags = { hl_group = "ObsidianTag" },
                  block_ids = { hl_group = "ObsidianBlockID" },
                  hl_groups = {
                      -- The options are passed directly to `vim.api.nvim_set_hl()`. See `:help nvim_set_hl`.
                      ObsidianTodo = { bold = true, fg = "#f78c6c" },
                      ObsidianDone = { bold = true, fg = "#89ddff" },
                      ObsidianRightArrow = { bold = true, fg = "#f78c6c" },
                      ObsidianTilde = { bold = true, fg = "#ff5370" },
                      ObsidianImportant = { bold = true, fg = "#d73128" },
                      ObsidianBullet = { bold = true, fg = "#89ddff" },
                      ObsidianRefText = { underline = true, fg = "#c792ea" },
                      ObsidianExtLinkIcon = { fg = "#c792ea" },
                      ObsidianTag = { italic = true, fg = "#89ddff" },
                      ObsidianBlockID = { italic = true, fg = "#89ddff" },
                      ObsidianHighlightText = { bg = "#75662e" },
                  },
              },

              -- see below for full list of options 👇
            })
        end,
    })

end)
