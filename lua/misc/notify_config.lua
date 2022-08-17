vim.notify = require("notify")
local plugin = "LND"
local file_notfound = false

--read data from project file
current_dir=io.popen"cd":read'*l'
project_data_lib = fileLine(1, "data.txt")
project_data_version = fileLine(2, "data.txt")
project_data_author = fileLine(3, "data.txt")

--set data not fount to true for exaptions
if project_data_lib == "No Data Found" then 
  file_notfound = true
end

vim.notify("Project loaded.\n" .. current_dir, "info", {
  title = plugin,
  timeout = 3000,
  on_open = function()
    if file_notfound then
      vim.notify("No Data", "warn", {
        title = "diagnostic",
        timeout = 3000,
      })
    else 
      vim.notify(" " .. project_data_lib, "info", {
        title = plugin,
        timeout = 3000,
      })
    end
    local timer = vim.loop.new_timer()
    timer:start(7000, 0, function()
      if file_notfound then
      else
      vim.notify({ "version : " .. project_data_version }, "info", {
        title = plugin,
        timeout = 3000,
        on_close = function()
          vim.notify("author : " .. project_data_author, "info",{ title = plugin, timeout = 2000 })
        end,
      })
    end
    end)
  end,
})