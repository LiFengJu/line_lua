local r3 = {
    name = "r3",
    currentState = nil,
    states ={'r3s1','r3s2','r3s3','r3s4','r3s5','r3s6'},
    line = nil,
}

function r3:execute()
    changeState(self, "r3s1")
end


function r3:onEvent(data)

end

return r3