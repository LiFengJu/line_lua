--local t1s2 = {
--    name = "t1s2",
--    func = "moving",
--}
--function t1s1:init_subscribe()
--    bus:subscribe('am516','stop',function()
--        t1s2:onEvent()
--    end)
--end
--
--function t1s2:execute(m)
--    print(self.m.name..' is '..self.func)
--end
--
--function t1s2:exit(m)
--    print("t1s1.exit is called")
--end
--
--function t1s2:onEvent(data)
--    changeState(self.m, "t1s1")
--
--end
--
--return t1s2