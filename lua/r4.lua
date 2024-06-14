local r4 = {
    name = "r4",
    currentState = nil,
    states = {'r4s1','r4s2','r4s3'},
}

function r4:execute()
    changeState(self, "r4s1")
    return self
end


function r4:onEvent(event)

end

return r4