local r1 = {
    name = "r1",
    currentState = nil,
    states ={'r1s1','r1s2','r1s3'},
    line = nil,
}

function r1:execute()
    changeState(self, "r1s1")
end

function r1:onEvent(data)

end

return r1