local w2s1 = {
    name = "w2s1",
    func = 'idle',
    m = nil,
}

function w2s1:init_subscribe()
    bus:subscribe('r2','loaded to w2',function()
        w2s1:onEvent()
    end)
end

function w2s1:execute(m)
    --print(m.name..' is '..self.func)

end

function w2s1:exit(m)
    print("w2s1.exit is called")
end

function w2s1:onEvent()
    changeState(self.m, "w1s2")
end

return w2s1