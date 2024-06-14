local fqcs1 = {
    name = "fqcs1",
    func = 'idle'
}

function fqcs1:init_subscribe()
    bus:subscribe('r3','arrive_z3',function()
        self:onEvent()
    end)
end

function fqcs1:execute(m)
    --print(m.name..' is '..self.func)
end

function fqcs1:exit(m)
    print("fqcs1.exit is called")
end

function fqcs1:onEvent(data)
    changeState(self.m, "fqcs2")
end

return fqcs1