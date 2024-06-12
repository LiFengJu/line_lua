local r1s3 = {
    name = "r1s3",
    func = 'loading',
    m = nil,
}

function r1s3:init_subscribe()
    bus:subscribe('r1s3', 'loaded', function(data)
        r1s3:onEvent()
    end)
end


function r1s3:execute()
    print(self.m.name..' is '..self.func)
    timer.push(5, function(id)
        bus:publish(self.name,'loaded',{})
    end)
end

function r1s3:exit(m)
    print("r1s3.exit is called")
end

function r1s3:onEvent(data)
    changeState(self.m, "r1s1")
end

return r1s3