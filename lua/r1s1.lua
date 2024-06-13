local r1s1 = {
    name = 'r1s1',
    func = 'idle',
    m = nil,
}

function r1s1:init_subscribe()
    bus:subscribe('am516', 'run', function()
        r1s1:onEvent()
    end)
    --bus:subscribe()
end


function r1s1:execute(m)
    print(m.name..' is '..self.func)
end

function r1s1:onEvent(data)
    changeState(self.m, "r1s2")
end

function r1s1:exit(m)
    print("r1s1.exit is called")
end

return r1s1