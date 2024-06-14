local r3s1 = {
    name = "r3s1",
    func = "idle",
    m = nil

}
function r3s1:init_subscribe()
    bus:subscribe('r2', 'arrive_z2', function()
        r3s1:onEvent({publisher='r2'})
    end)
    bus:subscribe('w3', 'finished', function()
        r3s1:onEvent({publisher='w3'})
    end)
    bus:subscribe('w4', 'finished', function()
        r3s1:onEvent({publisher='w4'})
    end)
end

function r3s1:execute(m)
    --print(m.name..' is '..self.func)

end

function r3s1:exit(m)
    print("r3s1.exit is called")
end
function r3s1:onEvent(data)
    if data.publisher == 'r2' then
        changeState(self.m, "r3s2")
    elseif data.publisher == 'w3' then
        changeState(self.m, "r3s5")
    elseif data.publisher == 'w4' then
        changeState(self.m, "r3s6")
    end
end

return r3s1