local led_s1 = {
    color = "yellow",
}

function led_s1:execute(m)
   state:set(function(k)
        k.led.color = self.color
    end)
    return self
end

function led_s1:exit(m)
end

function led_s1:onEvent(m, event)
    if event.name == "run" then
        changeState(m, "led_s2")
    end
end

return led_s1