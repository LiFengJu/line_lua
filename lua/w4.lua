local w4 = {
    name = "w4",
    currentState = nil,
    states ={'w4s1','w4s2'},
    line = nil,
}

function w4:execute()
    changeState(self, "w4s1")
    return self
end

function w4:onEvent(data)

end

return w4