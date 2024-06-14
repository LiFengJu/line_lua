local r2s5 = {
    name = "r2s5",
    func = 'unloading order from w1 to line',
    m = nil,
}

function r2s5:init_subscribe()

end

function r2s5:execute(m)
    print(m.name..' is '..self.func)
    timer.push(8, function()
        print(m.name..' unloaded')
        self:onEvent()
    end)

end

function r2s5:exit(m)
    print("r2s5.exit is called")
end

function r2s5:onEvent(data)
    changeState(self.m, "r2s1")
    print('order is moving to z2')
    timer.push(4, function()
        print('order arrive z2')
        bus:publish(self.m.name,'arrive_z2')
    end)
end

return r2s5