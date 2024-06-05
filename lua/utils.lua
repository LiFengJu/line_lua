---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by gepen.
--- DateTime: 2024/5/27 20:22
---

function changeState(machine, state_name, args)
    local state = require(state_name)
    if machine.currentState ~= nil then
        machine.currentState:exit(machine)
    end
    machine.currentState = state
    machine.currentState:execute(machine, args)
    print(machine.name ..' change state to '..state_name)
end

function has_method(object, method_name)
    if type(object) ~= "table" then
        return false
    elseif type(method_name) ~= "string" then
        return false
    end
    local m = object[method_name]
    if type(m) ~= "function" then
        return false
    end
    return true
end
