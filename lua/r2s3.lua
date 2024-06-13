local r2s3 = {
    name = "r2s3",
    func = 'loading',
    m = nil,
}

function r2s3:init_subscribe()
    bus:subscribe('r1', 'loaded', function()
        r2s3:onEvent()
    end)
end

function r2s3:execute(m)
    print(m.name..' is '..self.func)
    time.push(5, function()
        print(m.name..'loaded')
        bus:publish(m.name, 'loaded')
    end)
end

function r2s3:exit(m)
    print("r2s3.exit is called")
end

function r2s3:onEvent(data)
    changeState(self.m, "r2s1")
end
