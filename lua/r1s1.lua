local r1s1 = {
    name = "idle state"
}

function r1s1:execute(m)
    self.m = m
    print("r1s1.execute", m)
    print(m.name, self.name)
    --timer.push(3, self:onTimer())
    timer.push(3, function(id)
        print("onTimer",self.name, id, self.m, self.m.line)
        changeState(self.m, "r1s2", {
            name = "name123",
        })
    end)
    --print("三色灯状态", m.conf.plc:readI16(27,16))
    --print("订单号", m.conf.plc:readString(26,0,8))
end

function r1s1:exit(m)
    print("r1s1.exit is called")
end

function r1s1:onTimer()
    return function(id)
        print(self.name, "onTimer", id, self.m, self.m.line)
        changeState(self.m, "r1s2", {
            name = "name123",
        })
    end
end

function r1s1:onEvent(m, event)
    print("---------")
    --print("---------", m, event)
    changeState(m, "r1s2")
end

return r1s1