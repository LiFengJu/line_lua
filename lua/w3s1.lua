local w3s1 = {
    name = "w3s1",
    func = 'idle',
    m = nil,
}

function w3s1:init_subscribe()
    bus:subscribe('r3','loaded to w3',function()
        w3s1:onEvent()
    end)
end

function w3s1:execute(m)
    --print(m.name..' is '..self.func)

end

function w3s1:exit(m)
    print("w3s1.exit is called")
end

function w3s1:onEvent()
    changeState(self.m, "w3s2")
end

return w3s1