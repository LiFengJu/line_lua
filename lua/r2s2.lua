local r2s2 = {
    name = "r2s2",
    func = "finding",
    m = nil
}

function init_subscribe()
    bus:subscribe('r2','found', function()
        r2s1:onEvent()
    end)
end

function execute(m)
    print(m.name..' is '..self.func)
    time.push(2, function()
        print(m.name..'found')
        bus:publish(m.name, 'found')
    end)
end

function exit(m)
    print("r2s1.exit is called")
end

function onEvent(data)
    changeState(self.m, "r2s3")
end


