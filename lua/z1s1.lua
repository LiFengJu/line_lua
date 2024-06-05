local z1s1 = {
    name = "z1 down"
}

function z1s1:execute(m)
    --print("三色灯状态", m.conf.plc:readI16(27,16))
    --print("订单号", m.conf.plc:readString(26,0,8))
end

function z1s1:exit(m)
end

function z1s1:onEvent(m, event)
    changeState(m, "z1s2")
end

return z1s1