local r3s6 = {
    name = "r3s6",
    func = 'unloading order from w4 to line',
    m = nil,
}

function r3s6:init_subscribe()

end

function r3s6:execute(m)
    print(m.name..' is '..self.func)
    timer.push(8, function()
        print(m.name..' unloaded')
        self:onEvent()
    end)

end

function r3s6:exit(m)
    print("r3s5.exit is called")
end

function r3s6:onEvent(data)
    changeState(self.m, "r3s1")
    print('order is moving to z3')
    timer.push(4, function()
        print('order arrive z3')
        bus:publish(self.m.name,'arrive_z3')
    end)
end

return r3s6