local w1s2 = {
    name = "w1s2",
    func = 'writing_A',
    m = nil,
}

function w1s2:init_subscribe()

end

function w1s2:execute(m)
    print(m.name..' is '..self.func)
    timer.push(10, function()
        print(m.name..' finished')
        self:onEvent()
        bus:publish(m.name,'finished')
    end)
end

function w1s2:exit(m)
    print("w1s2.exit is called")
end

function w1s2:onEvent(data)
    changeState(self.m, "w1s1")
end

return w1s2