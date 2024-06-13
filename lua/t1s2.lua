local t1s2 = {
    name = "t1s2",
    func = "moving",
}
function t1s1:init_subscribe()
    bus:subscribe('t1','arrive z1',function()
        t1s1:onEvent()
    end)
    bus:subscribe('t1','left',function()
        t1s1:onEvent()
    end)
end

function t1s2:execute(m,data)
    print(self.m.name..' is '..self.func)
    if data.topic == 'unloaded' then
        time.push(2,function()
            print(m.name..'arrive z1')
            bus:publish(m.name,'arrive z1')
        end)
    elseif data.topic == 'loaded' then
        time.push(2,function()
            print(m.name..'left')
            bus:publish(m.name,'left')
        end)
    end
    end

function t1s2:exit(m)
    print("t1s1.exit is called")
end

function t1s2:onEvent(data)
    changeState(self.m, "t1s1")

end

return t1s2