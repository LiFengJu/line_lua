--local t1s1 = {
--    name = "t1s1",
--    func = 'idle',
--    m = nil
--}
--
--function t1s1:init_subscribe()
--    bus:subscribe('am516','run',function()
--        t1s1:onEvent()
--    end)
--end
--
--
--function t1s1:execute(m)
--    print(m.name..' is '..self.func)
--
--end
--
--function t1s1:exit(m)
--    print("t1s1.exit is called")
--end
--
--function t1s1:onEvent(data)
--    changeState(self.m, "t1s2",data)
--end
--
--return t1s1