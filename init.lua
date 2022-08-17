require "ARA.keymap"
require "ARA.plugins"
require "ARA.options"
require "ARA.cmd"
require "ARA.alpha"
require "functions.io"
require "ARA.user_command"
require "ARA.cmp_config"
vim.cmd('source C:/Users/LENOVO/AppData/Local/nvim/lua/ARA/snip.vim')
vim.notify = require("notify")
local timer = vim.loop.new_timer()
timer:start(3000, 0, function()
    require "misc.notify_config"
end)
