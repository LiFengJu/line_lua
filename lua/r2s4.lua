local r2s4 = {
    name = "r2s4",
    func = "unloading",
    m = nil,
}

function r2s4:init_subscribe()
    bus:subscribe('r2', 'unloaded', function()
        r2s4:onEvent()
    end)
end

function r2s4:execute(m)
    print(m.name..' is '..self.func)
    time.push(5, function()
        print(m.name..'unloaded')
        bus:publish(m.name, 'unloaded')
    end)
end

function r2s4:exit(m)
    print("r2s4.exit is called")
end

function r2s4:onEvent(data)
    changeState(self.m, "r2s1")
end

