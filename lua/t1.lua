local t1 = {
    name = "transport_1",
    currentState = nil,
    states ={'t1s1','t1s2'},
    line = nil
}

function t1:execute()
    changeState(self, "t1s1")
end


function t1:onEvent(event)

end

return t1