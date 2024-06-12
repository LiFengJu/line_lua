local z1s1 = {
    name = "z1 down"
}

function z1s1:execute(m)
    print("z1s1.execute")
    print(m.name, self.name)
end

function z1s1:exit(m)
    print("z1s1.exit is called")
end

function z1s1:onEvent(m, event)
    changeState(m, "z1s2")
end

return z1s1