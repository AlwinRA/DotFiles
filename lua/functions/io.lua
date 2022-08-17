function fileLine (lineNum, fileName)
    local count = 0
    if file_exist(fileName) then
      for line in io.lines(fileName) do
        count = count + 1
        if count == lineNum then return line end
      end
    else return "No Data Found"
    end
    error(fileName .. " has fewer than " .. lineNum .. " lines.")
end

function file_exist(fileName)
  local a = io.open(fileName, "r")
  if a~=nil then io.close(a) return true else return false end
end