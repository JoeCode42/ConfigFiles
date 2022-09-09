require('alex.base')
require('alex.highlights')
require('alex.maps')
require('alex.plugins')

local has = function(x)
    return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
    require('alex.macos')
end
if is_win then
    require('alex.window')
end
