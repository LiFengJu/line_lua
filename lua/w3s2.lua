local w3s2 = {
    name = "w3s2",
    func = 'writing_B',
    m = nil,
}

function w3s2:init_subscribe()

end

function w3s2:execute(m)
    print(m.name..' is '..self.func)
    timer.push(10, function()
        print(m.name..' finished')
        bus:publish(m.name,'finished')
        self:onEvent()
    end)
end

function w3s2:exit(m)
    print("w3s2.exit is called")
end

function w3s2:onEvent(data)
    changeState(self.m, "w3s1")
end

return w3s2