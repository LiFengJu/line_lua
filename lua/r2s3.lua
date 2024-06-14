local r2s3 = {
    name = "r2s3",
    func = 'loading order to w1',
    m = nil,
}

function r2s3:init_subscribe()

end

function r2s3:execute(m)
    print(m.name..' is '..self.func)
    timer.push(8, function()
        print(m.name..' loaded')
        self:onEvent()
        bus:publish(m.name,'loaded to w1')
        end)
end

function r2s3:exit(m)
    print("r2s3.exit is called")
end

function r2s3:onEvent(data)
    changeState(self.m, "r2s1")
end

return r2s3