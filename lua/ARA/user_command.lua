vim.api.nvim_create_user_command('CompileOpenGL', 'echo toupper(<q-args>)', { nargs = 1 })
vim.api.nvim_create_user_command('Save', ':w', { nargs = 0 })
vim.api.nvim_create_user_command('Compileandrunopengl', ':!mingw32-make && cd build && main', { nargs = 0 })