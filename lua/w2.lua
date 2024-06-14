local w2 = {
    name = "w2",
    currentState = nil,
    states ={'w2s1','w2s2'},
    line = nil,
}

function w2:execute()
    changeState(self, "w2s1")
    return self
end

function w2:onEvent(data)

end

return w2