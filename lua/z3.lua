local z3 ={
    name = 'z3',
    currentState = nil,
    states = {'z3s1','z3s2'},
    line = nil
}

function z3:execute()
    changeState(self, "z3s1")
    return self
end


function z3:onEvent(data)

end

return z3