-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/m42nk/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/m42nk/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/m42nk/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/m42nk/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/m42nk/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18lsp/installer\frequire\0" },
    loaded = true,
    path = "/home/m42nk/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\2?\2\0\3\2\2\0\a+\0\0\0007\0\0\0007\0\1\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1À\24nvim_buf_set_keymap\bapi?\2\0\3\2\2\0\a+\0\0\0007\0\0\0007\0\1\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1À\24nvim_buf_set_option\bapiÖ\n\1\2\n\1(\0o1\2\0\0001\3\1\0\16\4\3\0%\5\2\0%\6\3\0>\4\3\0013\4\4\0\16\5\2\0%\6\5\0%\a\6\0%\b\a\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\b\0%\b\t\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\n\0%\b\v\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\f\0%\b\r\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\14\0%\b\15\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\16\0%\b\17\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\18\0%\b\19\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\20\0%\b\21\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\22\0%\b\23\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\24\0%\b\25\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\26\0%\b\27\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\28\0%\b\29\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\30\0%\b\31\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a \0%\b!\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\"\0%\b#\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a$\0%\b%\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a&\0%\b'\0\16\t\4\0>\5\5\0010\0\0€G\0\1\0\0\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0\18\1\0\1\1\1\0\0021\0\0\0G\0\1\0\1\0\0\0" },
    loaded = true,
    path = "/home/m42nk/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/m42nk/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18lsp/installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\2?\2\0\3\2\2\0\a+\0\0\0007\0\0\0007\0\1\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1À\24nvim_buf_set_keymap\bapi?\2\0\3\2\2\0\a+\0\0\0007\0\0\0007\0\1\0+\1\1\0C\2\0\0=\0\1\1G\0\1\0\0\0\1À\24nvim_buf_set_option\bapiÖ\n\1\2\n\1(\0o1\2\0\0001\3\1\0\16\4\3\0%\5\2\0%\6\3\0>\4\3\0013\4\4\0\16\5\2\0%\6\5\0%\a\6\0%\b\a\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\b\0%\b\t\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\n\0%\b\v\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\f\0%\b\r\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\14\0%\b\15\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\16\0%\b\17\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\18\0%\b\19\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\20\0%\b\21\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\22\0%\b\23\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\24\0%\b\25\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\26\0%\b\27\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\28\0%\b\29\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\30\0%\b\31\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a \0%\b!\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\"\0%\b#\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a$\0%\b%\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a&\0%\b'\0\16\t\4\0>\5\5\0010\0\0€G\0\1\0\0\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0\18\1\0\1\1\1\0\0021\0\0\0G\0\1\0\1\0\0\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
