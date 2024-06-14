local r2 = {
    name = "r2",
    currentState = nil,
    states ={'r2s1','r2s2','r2s3','r2s4','r2s5','r2s6'},
    line = nil,
}

function r2:execute()
    changeState(self, "r2s1")
end


function r2:onEvent(data)

end

return r2