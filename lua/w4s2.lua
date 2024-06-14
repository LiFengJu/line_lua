local w4s2 = {
    name = "w4s2",
    func = 'writing_B',
    m = nil,
}

function w4s2:init_subscribe()

end

function w4s2:execute(m)
    print(m.name..' is '..self.func)
    timer.push(10, function()
        print(m.name..' finished')
        self:onEvent()
        bus:publish(m.name,'finished')
    end)
end

function w4s2:exit(m)
    print("w4s2.exit is called")
end

function w4s2:onEvent(data)
    changeState(self.m, "w4s1")
end

return w4s2