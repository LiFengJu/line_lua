local w1 = {
    name = "w1",
    currentState = nil,
    states ={'w1s1','w1s2'},
    line = nil,
}

function w1:execute()
    changeState(self, "w1s1")
    return self
end


function w1:onEvent(data)

end

return w1