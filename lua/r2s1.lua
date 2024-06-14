local r2s1 = {
    name = "r2s1",
    func = "idle",
    m = nil,
}
function r2s1:init_subscribe()
    bus:subscribe('r1', 'arrive_z1', function()
        r2s1:onEvent({publisher='r1'})
    end)
    bus:subscribe('w1', 'finished', function()
        r2s1:onEvent({publisher='w1'})
    end)
    bus:subscribe('w2', 'finished', function()
        r2s1:onEvent({publisher='w2'})
    end)
end

function r2s1:execute(m)
    --print(m.name..' is '..self.func)
end

function r2s1:exit(m)
    print("r2s1.exit is called")
end

function r2s1:onEvent(data)
    if data.publisher == 'r1' then
        changeState(self.m, "r2s2")
    elseif data.publisher == 'w1' then
        changeState(self.m, "r2s5")
    elseif data.publisher == 'w2' then
        changeState(self.m, "r2s6")
    end
end


return r2s1