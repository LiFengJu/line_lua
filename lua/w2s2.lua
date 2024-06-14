local w2s2 = {
    name = "w2s2",
    func = 'writing_A',
    m = nil,
}

function w2s2:init_subscribe()

end

function w2s2:execute(m)
    print(m.name..' is '..self.func)
    timer.push(10, function()
        print(m.name..' finished')
        bus:publish(m.name,'finished')
        self:onEvent()
    end)
end

function w2s2:exit(m)
    print("w2s2.exit is called")
end

function w2s2:onEvent(data)
    changeState(self.m, "w1s1")
end

return w2s2