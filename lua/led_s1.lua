local led_s1 = {
    color = "yellow",
}

function led_s1:execute(m)
    print("state---------------", state)
   state:set(function(k)
        k.led.color = self.color
    end)
end

function led_s1:exit(m)
    print("led_s1.exit is called")
end

function led_s1:onEvent(m, event)
    if event.data.action == "run" then
        changeState(m, "led_s2")
    end
end

return led_s1