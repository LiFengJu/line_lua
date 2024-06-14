local r3s3 = {
    name = "r3s3",
    func = 'loading order to w3',
    m = nil,
}

function r3s3:init_subscribe()

end

function r3s3:execute(m)
    print(m.name..' is '..self.func)
    timer.push(8, function()
        print(m.name..' loaded')
        self:onEvent()
        bus:publish(m.name,'loaded to w3')
    end)
end

function r3s3:exit(m)
    print("r3s3.exit is called")
end

function r3s3:onEvent(data)
    changeState(self.m, "r3s1")
end

return r3s3