---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by gepeng.
--- DateTime: 2021/10/21 17:51
---

local r4 = {
    name = "robot_arm_4",
    currentState = nil,
}

function r4:execute()
    changeState(self, "r4s1")
    return self
end


function r4:onEvent(event)
    --changeState(m, "r4s1")
    --self.line:subscribe(self.)
end

return r4