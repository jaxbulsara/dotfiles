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
local package_path_str = "/home/jay/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/jay/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/jay/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/jay/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jay/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  FastFold = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/FastFold",
    url = "https://github.com/Konfekt/FastFold"
  },
  SimpylFold = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/SimpylFold",
    url = "https://github.com/tmhedberg/SimpylFold"
  },
  ale = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/ale",
    url = "https://github.com/dense-analysis/ale"
  },
  ["cypher-vim-syntax"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/cypher-vim-syntax",
    url = "https://github.com/neo4j-contrib/cypher-vim-syntax"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  fzf = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["jedi-vim"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/jedi-vim",
    url = "https://github.com/davidhalter/jedi-vim"
  },
  ["kotlin-vim"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/kotlin-vim",
    url = "https://github.com/udalov/kotlin-vim"
  },
  ["lightline-ale"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/lightline-ale",
    url = "https://github.com/maximbaz/lightline-ale"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  ["monokai.nvim"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/monokai.nvim",
    url = "https://github.com/tanvirtin/monokai.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n¸\1\0\1\a\1\5\1$9\1\0\0\18\3\1\0009\1\1\0019\4\2\0\23\4\0\0049\5\2\0B\1\4\0026\2\3\0009\2\4\0024\4\4\0-\5\0\0:\5\1\5:\5\1\5-\6\0\0:\6\1\6:\6\2\6&\5\6\5>\5\1\4-\5\0\0:\5\2\5:\5\1\5-\6\0\0:\6\2\6:\6\2\6&\5\6\5>\5\2\4-\5\0\0:\5\3\5:\5\1\5-\6\0\0:\6\3\6:\6\2\6&\5\6\5>\5\3\4\18\5\1\0D\2\3\0\3À\17tbl_contains\bvim\bcol\bsub\tline\2\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0T\0\1\6\1\3\0\0149\1\0\0\18\3\1\0009\1\1\1'\4\2\0-\5\0\0:\5\2\5&\4\5\4B\1\3\2\v\1\0\0X\1\2€+\1\1\0X\2\1€+\1\2\0L\1\2\0\bÀ\a.%\nmatch\14prev_char¢\4\1\0\17\0\22\1X6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\3\0B\1\2\0026\2\0\0'\4\4\0B\2\2\0024\3\4\0005\4\5\0>\4\1\0035\4\6\0>\4\2\0035\4\a\0>\4\3\0039\4\b\0004\6\3\0\18\a\1\0'\t\t\0'\n\t\0B\a\3\2\18\t\a\0009\a\n\a3\n\v\0B\a\3\0?\a\0\0B\4\2\0016\4\f\0\18\6\3\0B\4\2\4H\a\25€9\t\b\0004\v\3\0\18\f\1\0:\14\1\b'\15\t\0&\14\15\14'\15\t\0:\16\2\b&\15\16\15B\f\3\2\18\14\f\0009\f\n\f3\15\r\0B\f\3\2\18\14\f\0009\f\14\f3\15\15\0B\f\3\2\18\14\f\0009\f\16\f:\15\2\bB\f\3\0?\f\0\0B\t\2\0012\a\0€F\a\3\3R\aå\1279\4\b\0004\6\3\0\18\a\1\0'\t\17\0'\n\18\0'\v\19\0B\a\4\2\18\t\a\0009\a\n\a9\n\20\2'\f\t\0B\n\2\0A\a\1\2\18\t\a\0009\a\14\a9\n\21\2'\f\18\0B\n\2\0A\a\1\0?\a\0\0B\4\2\0012\0\0€K\0\1\0\16after_regex\21not_before_regex\trust\6>\6<\fuse_key\0\14with_move\0\npairs\0\14with_pair\6 \14add_rules\1\3\0\0\6{\6}\1\3\0\0\6[\6]\1\3\0\0\6(\6)\25nvim-autopairs.conds\24nvim-autopairs.rule\nsetup\19nvim-autopairs\frequire\3€€À™\4\0" },
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-markdown"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/nvim-markdown",
    url = "https://github.com/ixru/nvim-markdown"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-tmux-navigation"] = {
    config = { "\27LJ\2\n \2\0\0\6\0\14\0 6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0009\5\a\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\b\0009\5\t\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\n\0009\5\v\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0009\5\r\0B\1\4\1K\0\1\0\26NvimTmuxNavigateRight\n<C-l>\23NvimTmuxNavigateUp\n<C-k>\25NvimTmuxNavigateDown\n<C-j>\25NvimTmuxNavigateLeft\n<C-h>\6n\bset\vkeymap\bvim\25nvim-tmux-navigation\frequire\0" },
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/nvim-tmux-navigation",
    url = "https://github.com/alexghergh/nvim-tmux-navigation"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["python-syntax"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/python-syntax",
    url = "https://github.com/vim-python/python-syntax"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  supertab = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/supertab",
    url = "https://github.com/ervandew/supertab"
  },
  ["vim-android"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-android",
    url = "https://github.com/hsanson/vim-android"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-elixir"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-elixir",
    url = "https://github.com/elixir-editors/vim-elixir"
  },
  ["vim-erlang-runtime"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-erlang-runtime",
    url = "https://github.com/vim-erlang/vim-erlang-runtime"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-javascript",
    url = "https://github.com/pangloss/vim-javascript"
  },
  ["vim-json"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-json",
    url = "https://github.com/leshill/vim-json"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty",
    url = "https://github.com/MaxMEllon/vim-jsx-pretty"
  },
  ["vim-perl"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-perl",
    url = "https://github.com/vim-perl/vim-perl"
  },
  ["vim-pythonsense"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-pythonsense",
    url = "https://github.com/jeetsukumaran/vim-pythonsense"
  },
  ["vim-textobj-comment"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-textobj-comment",
    url = "https://github.com/glts/vim-textobj-comment"
  },
  ["vim-textobj-elixir"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-textobj-elixir",
    url = "https://github.com/amiralies/vim-textobj-elixir"
  },
  ["vim-textobj-function"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-textobj-function",
    url = "https://github.com/kana/vim-textobj-function"
  },
  ["vim-textobj-function-rust"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-textobj-function-rust",
    url = "https://github.com/bagohart/vim-textobj-function-rust"
  },
  ["vim-textobj-markdown"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-textobj-markdown",
    url = "https://github.com/coachshea/vim-textobj-markdown"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  vimux = {
    loaded = true,
    path = "/home/jay/.local/share/nvim/site/pack/packer/start/vimux",
    url = "https://github.com/preservim/vimux"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n¸\1\0\1\a\1\5\1$9\1\0\0\18\3\1\0009\1\1\0019\4\2\0\23\4\0\0049\5\2\0B\1\4\0026\2\3\0009\2\4\0024\4\4\0-\5\0\0:\5\1\5:\5\1\5-\6\0\0:\6\1\6:\6\2\6&\5\6\5>\5\1\4-\5\0\0:\5\2\5:\5\1\5-\6\0\0:\6\2\6:\6\2\6&\5\6\5>\5\2\4-\5\0\0:\5\3\5:\5\1\5-\6\0\0:\6\3\6:\6\2\6&\5\6\5>\5\3\4\18\5\1\0D\2\3\0\3À\17tbl_contains\bvim\bcol\bsub\tline\2\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0T\0\1\6\1\3\0\0149\1\0\0\18\3\1\0009\1\1\1'\4\2\0-\5\0\0:\5\2\5&\4\5\4B\1\3\2\v\1\0\0X\1\2€+\1\1\0X\2\1€+\1\2\0L\1\2\0\bÀ\a.%\nmatch\14prev_char¢\4\1\0\17\0\22\1X6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\3\0B\1\2\0026\2\0\0'\4\4\0B\2\2\0024\3\4\0005\4\5\0>\4\1\0035\4\6\0>\4\2\0035\4\a\0>\4\3\0039\4\b\0004\6\3\0\18\a\1\0'\t\t\0'\n\t\0B\a\3\2\18\t\a\0009\a\n\a3\n\v\0B\a\3\0?\a\0\0B\4\2\0016\4\f\0\18\6\3\0B\4\2\4H\a\25€9\t\b\0004\v\3\0\18\f\1\0:\14\1\b'\15\t\0&\14\15\14'\15\t\0:\16\2\b&\15\16\15B\f\3\2\18\14\f\0009\f\n\f3\15\r\0B\f\3\2\18\14\f\0009\f\14\f3\15\15\0B\f\3\2\18\14\f\0009\f\16\f:\15\2\bB\f\3\0?\f\0\0B\t\2\0012\a\0€F\a\3\3R\aå\1279\4\b\0004\6\3\0\18\a\1\0'\t\17\0'\n\18\0'\v\19\0B\a\4\2\18\t\a\0009\a\n\a9\n\20\2'\f\t\0B\n\2\0A\a\1\2\18\t\a\0009\a\14\a9\n\21\2'\f\18\0B\n\2\0A\a\1\0?\a\0\0B\4\2\0012\0\0€K\0\1\0\16after_regex\21not_before_regex\trust\6>\6<\fuse_key\0\14with_move\0\npairs\0\14with_pair\6 \14add_rules\1\3\0\0\6{\6}\1\3\0\0\6[\6]\1\3\0\0\6(\6)\25nvim-autopairs.conds\24nvim-autopairs.rule\nsetup\19nvim-autopairs\frequire\3€€À™\4\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: nvim-tmux-navigation
time([[Config for nvim-tmux-navigation]], true)
try_loadstring("\27LJ\2\n \2\0\0\6\0\14\0 6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0009\5\a\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\b\0009\5\t\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\n\0009\5\v\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0009\5\r\0B\1\4\1K\0\1\0\26NvimTmuxNavigateRight\n<C-l>\23NvimTmuxNavigateUp\n<C-k>\25NvimTmuxNavigateDown\n<C-j>\25NvimTmuxNavigateLeft\n<C-h>\6n\bset\vkeymap\bvim\25nvim-tmux-navigation\frequire\0", "config", "nvim-tmux-navigation")
time([[Config for nvim-tmux-navigation]], false)

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
