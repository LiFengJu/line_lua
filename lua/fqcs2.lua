local fqcs2 = {
    name = "fqcs2",
    func = 'checking'
}
function fqcs2:init_subscribe()

end

function fqcs2:execute(m)
    print(m.name..' is '..self.func)
    timer.push(8, function()
        print(m.name..' checked')
        self:onEvent()
        bus:publish(m.name,'checked')
    end)
end

function fqcs2:exit(m)
    print("fqcs2.exit is called")
end

function fqcs2:onEvent(data)
    changeState(self.m, "fqcs1")
end

return fqcs2