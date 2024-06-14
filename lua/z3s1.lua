local z3s1 = {
    name = "z3s1",
    func = 'idle',
    m = nil,
}

function z3s1:init_subscribe()
    bus:subscribe('fqc','checked',function()
        z3s1:onEvent()
    end)
end

function z3s1:execute(m)
    --print(m.name..' is '..self.func)
end

function z3s1:exit(m)
    print("z3s1.exit is called")
end

function z3s1:onEvent()
    changeState(self.m, "z3s2")
end

return z3s1