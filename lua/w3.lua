local w3 = {
    name = "w3",
    currentState = nil,
    states ={'w3s1','w3s2'},
    line = nil,
}

function w3:execute()
    changeState(self, "w3s1")
    return self
end

function w3:onEvent(data)

end

return w3