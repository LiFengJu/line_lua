local fqc = {
    name = "fqc",
    currentState = nil,
    states ={'fqcs1','fqcs2'},
    line = nil,
}

function fqc:execute()
    changeState(self, "fqcs1")
    return self
end


function fqc:onEvent(data)

end

return fqc