local r4s3 = {
    name = "r4s3",
    func = 'unloading from line',
    m = nil,
}
function r4s3:init_subscribe()

end
function r4s3:execute(m)
    print(m.name..' is '..self.func)
    timer.push(8,function()
        print(m.name..' unloaded')
        self:onEvent()
    end)
end

function r4s3:exit(m)
    print("r4s3.exit is called")
end

function r4s3:onEvent(data)
    changeState(self.m, "r4s1")
end

return r4s3