local r2s4 = {
    name = "r2s4",
    func = 'loading order to w2',
    m = nil,
}

function r2s4:init_subscribe()

end

function r2s4:execute(m)
    print(m.name..' is '..self.func)
    timer.push(8, function()
        print(m.name..'loaded')
        self:onEvent()
        bus:publish(m.name,'loaded to w2')
    end)
end

function r2s4:exit(m)
    print("r2s4.exit is called")
end

function r2s4:onEvent(data)
    changeState(self.m, "r2s1")
end

return r2s4
