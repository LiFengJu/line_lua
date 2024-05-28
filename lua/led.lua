
local led = {
    name = "led",
    s1 = require("led_s1"),
    s2 = require("led_s2"),
    clYellow = 1,
    clGreen = 2,
    clRed = 3,
    color = 0,
}

function led:execute(line)
    self.line = line
    changeState(self, "led_s1")
end


function led:onEvent(event)
    print(event)
    --print("ÈýÉ«µÆ×´Ì¬", event.conf.plc:readI16(27,16))

    --print("target", event.target)
    --print("data", event.data)
    --print("data.value", event.data.value)
    --print("self.currentState", self.currentState.name)
    if self.currentState ~= null then
        self.currentState:onEvent(self, event)
    end
end

return led