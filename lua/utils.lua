function changeState(machine, state_name, args)
    local state = require(state_name)
    if machine.currentState ~= nil then
        --machine.currentState:exit(machine)
    end
    machine.currentState = state
    --print(machine.name ..' change state to '..state_name)
    machine.currentState:execute(machine, args)
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
