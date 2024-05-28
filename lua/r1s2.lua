
local r1s2 = {
    name = "r1s2 探料",
}

function r1s2:execute(m, args)
    self.m = m
    print(self.name, "r1s2.execute", args)
    m.line:publish({
        data = "helloworld",
    })
end

function r1s2:exit(m)
    print("r1s1.exit is called")
end

function r1s2:onEvent(m, event)
    print("r1s2:onEvent", m.name, event)
    --changeState(m, "r1s3")
end

return r1s2