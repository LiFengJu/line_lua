local r2s6 = {
    name = "r2s6",
    func = 'unloading order from w2 to line',
    m = nil,
}

function r2s6:init_subscribe()

end

function r2s6:execute(m)
    print(m.name..' is '..self.func)
    timer.push(8, function()
        print(m.name..' unloaded')
        self:onEvent()
    end)
end

function r2s6:exit(m)
    print("r2s6.exit is called")
end

function r2s6:onEvent(data)
    changeState(self.m, "r2s1")
    print('order is moving to z2')
    timer.push(4, function()
        print('order arrive z2')
        bus:publish(self.m.name,'arrive_z2')
    end)
end

return r2s6