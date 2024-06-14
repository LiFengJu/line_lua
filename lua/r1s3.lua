local r1s3 = {
    name = "r1s3",
    func = 'loading to line',
    m = nil,
}

function r1s3:init_subscribe()

end


function r1s3:execute(m)
    print(m.name..' is '..self.func)
    timer.push(8, function()
        print(m.name..' loaded')
        self:onEvent()
    end)
end

function r1s3:exit(m)
    print("r1s3.exit is called")
end

function r1s3:onEvent(data)
    changeState(self.m, "r1s1")
    print('order is moving to z1')
    timer.push(4, function()
        print('order arrive z1')
        bus:publish(self.m.name, 'arrive_z1')
    end)
end

return r1s3