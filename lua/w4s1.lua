local w4s1 = {
    name = "w4 down"
}

function w4s1:execute(m)
    --print("三色灯状态", m.conf.plc:readI16(27,16))
    --print("订单号", m.conf.plc:readString(26,0,8))
end

function w4s1:exit(m)
end

function w4s1:onEvent(m, event)
    changeState(m, "w4s2")
end

return w4s1