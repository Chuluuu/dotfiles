--import custom config
--set LANG ='en_US'
vim.api.nvim_exec ('language en_US', true)
--language = 'en_US'
require ('chuluu.base')
require ('chuluu.highlights')
require ('chuluu.maps')
require ('chuluu.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"


if is_mac then
  require ('chuluu.macos')
end
if is_win then
  require ('chuluu.windows')
end
