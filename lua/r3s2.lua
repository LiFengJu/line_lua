local r3s2 = {
    name = "r3s2",
    func = 'finding order',
    m = nil,
    load_to = 3,
}

function r3s2:init_subscribe()

end

function r3s2:execute(m)
    print(m.name..' is '..self.func)
    timer.push(5, function()
        print(m.name..' found')
        self:onEvent()
    end)
end

function r3s2:exit(m)
    print("r3s2.exit is called")
end

function r3s2:onEvent(data)
    if self.load_to == 3 then
        changeState(self.m, "r3s3")
        self.load_to = 4
    else
        changeState(self.m, "r3s4")
        self.load_to = 3
    end
end

return r3s2