require('chuluu.base')
require('chuluu.highlights')
require('chuluu.maps')
require('chuulu.plugins')

local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('chuluu.macos')
end
if is_win then
  require('chuluu.windows')
end
