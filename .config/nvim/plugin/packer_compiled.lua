-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/hamilton/.cache/nvim/packer_hererocks/2.1.1725453128/share/lua/5.1/?.lua;/home/hamilton/.cache/nvim/packer_hererocks/2.1.1725453128/share/lua/5.1/?/init.lua;/home/hamilton/.cache/nvim/packer_hererocks/2.1.1725453128/lib/luarocks/rocks-5.1/?.lua;/home/hamilton/.cache/nvim/packer_hererocks/2.1.1725453128/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/hamilton/.cache/nvim/packer_hererocks/2.1.1725453128/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-remote-containers"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/nvim-remote-containers",
    url = "https://github.com/jamestthompson3/nvim-remote-containers"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["obsidian.nvim"] = {
    config = { "\27LJ\2\n�\r\0\0\6\0>\0C6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\0025\3\f\0005\4\14\0005\5\r\0=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\4=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\0035\4#\0=\4$\0035\4&\0005\5%\0=\5'\0045\5(\0=\5)\0045\5*\0=\5+\0045\5,\0=\5-\0045\5.\0=\5/\0045\0050\0=\0051\0045\0052\0=\0053\0045\0054\0=\0055\0045\0056\0=\0057\0045\0058\0=\0059\0045\5:\0=\5;\4=\4<\3=\3=\2B\0\2\1K\0\1\0\aui\14hl_groups\26ObsidianHighlightText\1\0\1\abg\f#75662e\20ObsidianBlockID\1\0\2\afg\f#89ddff\vitalic\2\16ObsidianTag\1\0\2\afg\f#89ddff\vitalic\2\24ObsidianExtLinkIcon\1\0\1\afg\f#c792ea\20ObsidianRefText\1\0\2\14underline\2\afg\f#c792ea\19ObsidianBullet\1\0\2\tbold\2\afg\f#89ddff\22ObsidianImportant\1\0\2\tbold\2\afg\f#d73128\18ObsidianTilde\1\0\2\tbold\2\afg\f#ff5370\23ObsidianRightArrow\1\0\2\tbold\2\afg\f#f78c6c\17ObsidianDone\1\0\2\tbold\2\afg\f#89ddff\17ObsidianTodo\1\0\v\17ObsidianTodo\0\20ObsidianRefText\0\16ObsidianTag\0\24ObsidianExtLinkIcon\0\20ObsidianBlockID\0\19ObsidianBullet\0\17ObsidianDone\0\23ObsidianRightArrow\0\22ObsidianImportant\0\18ObsidianTilde\0\26ObsidianHighlightText\0\1\0\2\tbold\2\afg\f#f78c6c\14block_ids\1\0\1\rhl_group\20ObsidianBlockID\ttags\1\0\1\rhl_group\16ObsidianTag\19highlight_text\1\0\1\rhl_group\26ObsidianHighlightText\19reference_text\1\0\1\rhl_group\20ObsidianRefText\23external_link_icon\1\0\2\rhl_group\24ObsidianExtLinkIcon\tchar\b\fbullets\1\0\2\rhl_group\19ObsidianBullet\tchar\b•\15checkboxes\6!\1\0\2\rhl_group\22ObsidianImportant\tchar\b\6~\1\0\2\rhl_group\18ObsidianTilde\tchar\t󰰱\6>\1\0\2\rhl_group\23ObsidianRightArrow\tchar\b\6x\1\0\2\rhl_group\17ObsidianDone\tchar\b\6 \1\0\5\6!\0\6 \0\6>\0\6x\0\6~\0\1\0\2\rhl_group\17ObsidianTodo\tchar\t󰄱\1\0\v\19highlight_text\0\15checkboxes\0\19reference_text\0\20max_file_length\3�'\23external_link_icon\0\fbullets\0\ttags\0\venable\2\14hl_groups\0\20update_debounce\3�\1\14block_ids\0\vpicker\17tag_mappings\1\0\2\15insert_tag\n<C-l>\rtag_note\n<C-x>\18note_mappings\1\0\2\16insert_link\n<C-l>\bnew\n<C-x>\1\0\3\tname\19telescope.nvim\18note_mappings\0\17tag_mappings\0\15workspaces\1\0\3\vpicker\0\aui\0\15workspaces\0\1\0\2\tname\rpersonal\tpath\r~/Brain/\nsetup\robsidian\frequire\0" },
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/obsidian.nvim",
    url = "https://github.com/epwalsh/obsidian.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/hamilton/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: obsidian.nvim
time([[Config for obsidian.nvim]], true)
try_loadstring("\27LJ\2\n�\r\0\0\6\0>\0C6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\0025\3\f\0005\4\14\0005\5\r\0=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\4=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\0035\4#\0=\4$\0035\4&\0005\5%\0=\5'\0045\5(\0=\5)\0045\5*\0=\5+\0045\5,\0=\5-\0045\5.\0=\5/\0045\0050\0=\0051\0045\0052\0=\0053\0045\0054\0=\0055\0045\0056\0=\0057\0045\0058\0=\0059\0045\5:\0=\5;\4=\4<\3=\3=\2B\0\2\1K\0\1\0\aui\14hl_groups\26ObsidianHighlightText\1\0\1\abg\f#75662e\20ObsidianBlockID\1\0\2\afg\f#89ddff\vitalic\2\16ObsidianTag\1\0\2\afg\f#89ddff\vitalic\2\24ObsidianExtLinkIcon\1\0\1\afg\f#c792ea\20ObsidianRefText\1\0\2\14underline\2\afg\f#c792ea\19ObsidianBullet\1\0\2\tbold\2\afg\f#89ddff\22ObsidianImportant\1\0\2\tbold\2\afg\f#d73128\18ObsidianTilde\1\0\2\tbold\2\afg\f#ff5370\23ObsidianRightArrow\1\0\2\tbold\2\afg\f#f78c6c\17ObsidianDone\1\0\2\tbold\2\afg\f#89ddff\17ObsidianTodo\1\0\v\17ObsidianTodo\0\20ObsidianRefText\0\16ObsidianTag\0\24ObsidianExtLinkIcon\0\20ObsidianBlockID\0\19ObsidianBullet\0\17ObsidianDone\0\23ObsidianRightArrow\0\22ObsidianImportant\0\18ObsidianTilde\0\26ObsidianHighlightText\0\1\0\2\tbold\2\afg\f#f78c6c\14block_ids\1\0\1\rhl_group\20ObsidianBlockID\ttags\1\0\1\rhl_group\16ObsidianTag\19highlight_text\1\0\1\rhl_group\26ObsidianHighlightText\19reference_text\1\0\1\rhl_group\20ObsidianRefText\23external_link_icon\1\0\2\rhl_group\24ObsidianExtLinkIcon\tchar\b\fbullets\1\0\2\rhl_group\19ObsidianBullet\tchar\b•\15checkboxes\6!\1\0\2\rhl_group\22ObsidianImportant\tchar\b\6~\1\0\2\rhl_group\18ObsidianTilde\tchar\t󰰱\6>\1\0\2\rhl_group\23ObsidianRightArrow\tchar\b\6x\1\0\2\rhl_group\17ObsidianDone\tchar\b\6 \1\0\5\6!\0\6 \0\6>\0\6x\0\6~\0\1\0\2\rhl_group\17ObsidianTodo\tchar\t󰄱\1\0\v\19highlight_text\0\15checkboxes\0\19reference_text\0\20max_file_length\3�'\23external_link_icon\0\fbullets\0\ttags\0\venable\2\14hl_groups\0\20update_debounce\3�\1\14block_ids\0\vpicker\17tag_mappings\1\0\2\15insert_tag\n<C-l>\rtag_note\n<C-x>\18note_mappings\1\0\2\16insert_link\n<C-l>\bnew\n<C-x>\1\0\3\tname\19telescope.nvim\18note_mappings\0\17tag_mappings\0\15workspaces\1\0\3\vpicker\0\aui\0\15workspaces\0\1\0\2\tname\rpersonal\tpath\r~/Brain/\nsetup\robsidian\frequire\0", "config", "obsidian.nvim")
time([[Config for obsidian.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
