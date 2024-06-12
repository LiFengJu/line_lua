local t1 = {
    name = "transport_1",
    part = "",
}

function t1:execute()
    changeState(self, "t1s1")
    return self
end


function t1:onEvent(event)

end

return t1