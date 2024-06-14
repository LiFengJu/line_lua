local w4s1 = {
    name = "w4s1",
    func = 'idle',
    m = nil,
}

function w4s1:init_subscribe()
    bus:subscribe('r3','loaded to w4',function()
        w1s1:onEvent()
    end)
end

function w4s1:execute(m)
    --print(m.name..' is '..self.func)

end

function w4s1:exit(m)
    print("w4s1.exit is called")
end

function w4s1:onEvent()
    changeState(self.m, "w4s2")
end

return w4s1