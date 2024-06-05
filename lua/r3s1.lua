local r3s1 = {
    name = "r3 idle state"
}

function r3s1:execute(m)
    --publish({
    --    target = "r1",
    --    data = {
    --        value = 1234455,
    --    }
    --})
end

function r3s1:exit(m)
end

function r3s1:moveto(m, x, y)
    --changeState(m, ""{
    --    target= "w1",
    --    name = "wipok",
    --    parr = 1,
    --})
end


return r3s1