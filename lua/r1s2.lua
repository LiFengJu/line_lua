local r1s2 = {
    name = "r1s2",
    func = 'finding order',
    m = nil,
}

function r1s2:init_subscribe()
end

function r1s2:execute(m)
    print(m.name..' is '..self.func)
    timer.push(5,function()
        print(m.name..' found')
        self:onEvent()
    end)
end


function r1s2:exit(m)
    print("r1s2.exit is called")
end


function r1s2:onEvent(data)
    changeState(self.m, "r1s3")
end

return r1s2