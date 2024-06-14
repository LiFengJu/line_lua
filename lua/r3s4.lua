local r3s4 = {
    name = "r3s4",
    func = 'loading order to w4',
    m = nil,
}

function r3s4:init_subscribe()

end

function r3s4:execute(m)
    print(m.name..' is '..self.func)
    timer.push(8, function()
        print(m.name..'loaded')
        self:onEvent()
        bus:publish(m.name,'loaded to w4')
    end)
end

function r3s4:exit(m)
    print("r3s4.exit is called")
end

function r3s4:onEvent(data)
    changeState(self.m, "r3s1")
end

return r3s4
