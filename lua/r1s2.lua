local r1s2 = {
    name = "r1s2 探料",
}

function r1s2:execute(m, args)
    self.m = m
    timer.push(3, function(id)
        state:setStock(20)
        --if state.t1.wip ==0 then
        --    changeState(m, "r1s3", {
        --        name = "name123",
        --    })
        --end
    end)
end

function r1s2:exit(m)
end

function r1s2:onEvent(m, event)
end

return r1s2