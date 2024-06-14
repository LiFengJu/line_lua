local w1s1 = {
    name = "w1s1",
    func = 'idle',
    m = nil,
}

function w1s1:init_subscribe()
    bus:subscribe('r2','loaded to w1',function()
        w1s1:onEvent({})
    end)
end

function w1s1:execute(m)
    --print(m.name..' is '..self.func)

end

function w1s1:exit(m)
    print("w1s1.exit is called")
end

function w1s1:onEvent()
    changeState(self.m, "w1s2")
end

return w1s1