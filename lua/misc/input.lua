local Input = require("nui.input")
local event = require("nui.utils.autocmd").event

local input = Input({
  position = "50%",
  size = {
    width = "50%",
  },
  border = {
    style = "single",
    text = {
      top = "[Command]",
      top_align = "center",
    },
  },
  win_options = {
    winhighlight = "Normal:Normal,FloatBorder:Normal", -- for colour FloatBorder:SpecialChar
  },
  keymap = {
    close = { "<Esc>", "<C-z>" },
  },
}, {
  prompt = "ara@nvim:~$ ",
  default_value = "",
  on_close = function()
    --print("Input Closed!")
  end,
  on_submit = function(value)
    --print("Input Submitted: " .. value)
    com(value)
  end,
})

-- mount/open the component
input:mount()

-- unmount component when cursor leaves buffer
input:on(event.BufLeave, function()
  input:unmount()
end)

function com(value)
  if (value == "opengl" or value == "Opengl") then
    vim.cmd('Compileandrunopengl')
  elseif (value == "save" or value == "Save") then
    vim.cmd('Save')
    print("Saved!")
  elseif (value == "Hello") then
    print("Value : Hello")
  elseif (value == "quit") then
    vim.cmd("Save")
    vim.cmd(":q")
  end
end