local r4s2 = {
    name = "r4s2",
    func = 'finding order',
    m = nil,
}
function r4s2:init_subscribe()

end
function r4s2:execute(m)
    print(m.name..' is '..self.func)
    timer.push(5,function()
        print(m.name..' found')
        self:onEvent()
    end)
end

function r4s2:exit(m)
    print("r4s2.exit is called")
end

function r4s2:onEvent(data)
    changeState(self.m, "r4s3")
    print('the next order start')
    bus:publish(self.m.name,'start')
end

return r4s2