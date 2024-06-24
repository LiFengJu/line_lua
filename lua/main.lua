
require("bus")
require("state")
require("timer")
require("db")
require("utils")

local main = {}

function main:Run()
    print("lua inside")
    print("main.Run")
    self.line = require("line")
    self.line:execute()
    self.line:run()
    return self.line
end

return main