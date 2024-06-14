local r2s2 = {
    name = 'r2s2',
    func = 'finding order',
    m = nil,
    load_to = '1',
}

function r2s2:init_subscribe()
end

function r2s2:execute(m)
    print(m.name..' is '..self.func)
    timer.push(5, function()
        print(m.name..' found')
        self:onEvent()
    end)
end

function r2s2:exit(m)
    print("r2s2.exit is called")
end

function r2s2:onEvent(data)
    if self.load_to == '1' then
        changeState(self.m, "r2s3")
        self.load_to = '2'
    else
        changeState(self.m, "r2s4")
        self.load_to = '1'
    end
end

return r2s2

