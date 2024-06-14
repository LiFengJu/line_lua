local z3s2 = {
    name = "z3s2",
    func = 'down',
    m = nil,
}

function z3s2:init_subscribe()

end

function z3s2:execute(m)
    print(m.name..' is '..self.func)
    timer.push(2,function()
        print('order left')
        self:onEvent()
        bus:publish(m.name,'left')
    end)
end

function z3s2:exit(m)
    print("z3s1.exit is called")
end

function z3s2:onEvent()
    changeState(self.m, "z3s1")
end

return z3s2