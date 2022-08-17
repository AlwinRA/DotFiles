local VA = vim.api
--toggle file explore
VA.nvim_set_keymap( 'n', '<C-b>', '<Esc>:Lex<CR>:vertical resize 24<CR>', {noremap = true})
VA.nvim_set_keymap( 'i', '<C-b>', '<Esc>:Lex<CR>:vertical resize 24<CR>', {noremap = true})
--debug for init.lua setup
VA.nvim_set_keymap( 'n', '<A-r>', ':source $MYVIMRC<CR>', {noremap = true})
--custom on-demand plugin loader
VA.nvim_set_keymap( 'n', '<A-i>', ':source C:/Users/LENOVO/AppData/Local/nvim/lua/misc/notify_config.lua<CR>', {noremap = true})
VA.nvim_set_keymap( 'n', '<A-b>', ':source C:/Users/LENOVO/AppData/Local/nvim/lua/misc/input.lua<CR>', {noremap = true})
