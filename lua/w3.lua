---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by gepeng.
--- DateTime: 2021/10/21 17:51
---

local w3 = {
    name = "write_3",
    part = "",
}

function w3:execute()
    changeState(self, "w3s1")
    return self
end

function w3:onEvent(event)
end

return w3