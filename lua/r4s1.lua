local r4s1 = {
    name = "r4s1",
    func = "idle",
    m = nil,
}
function r4s1:init_subscribe()
    bus:subscribe('z3','left',function()
        r4s1:onEvent()
    end)
end

function r4s1:execute(m)
    --print(m.name..' is '..self.func)
end

function r4s1:exit(m)
    print("r4s1.exit is called")
end

function r4s1:onEvent(event)
    changeState(self.m, "r4s2")
end

return r4s1