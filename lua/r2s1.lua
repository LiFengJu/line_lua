local r2s1 = {
    name = "r2s1",
    func = "idle",
    m = nil,
}
function r2s1:init_subscribe()
    bus:subscribe('t1', 'arrive z1', function()
        r2s1:onEvent({topic = 'arrive z1'})
    end)
    bus:subscribe('w1', 'finished_A', function()
        r2s1:onEvent({topic='finished_A'})
    end)
    bus:subscribe('w2', 'finished_B', function()
        r2s1:onEvent({topic='finished_B'})
    end)
end

function r2s1:execute(m)
    print(m.name..' is '..self.func)
end

function r2s1:exit(m)
    print("r2s1.exit is called")
end

function r2s1:onEvent(data)
    if data.topic == 'arrive z1' then
        changeState(self.m, "r2s2")
    else
        changeState(self.m, "r2s4")
    end
end


return r2s1