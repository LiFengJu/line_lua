local r1s2 = {
    name = "r1s2",
    func = 'finding',
    m = nil,
}

function r1s2:init_subscribe()
    bus:subscribe('r1s2', 'found', function(data)
        r1s2:onEvent()
    end)
end

function r1s2:execute()
    print(self.m.name..' is '..self.func)
    time.push(2, function(id)
        print(self.m.name..'found')
        bus:publish(self.name, 'found',{})
    end)
end


function r1s2:exit(m)
    print("r1s2.exit is called")
end


function r1s2:onEvent(data)
    changeState(self.m, "r1s3")
end

return r1s2