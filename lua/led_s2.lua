local led_s2 = {
    name = "led running",
}

function led_s2:execute(m, order)
    print("��������....")

end

function led_s2:exit(m)
    print("����������")
end

function led_s2:onEvent(m, event)
    if event.name == "stop" then
        changeState(m, "led_s1")
    end
end

return led_s2