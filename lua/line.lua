local line = {
    machines = { "r1", "r2", "r3", "r4", "w1", "w2", "w3", "w4", 'z3', "fqc" },
    name = "am516",
}

function line:execute()
    for _, name in ipairs(self.machines) do
        local m = require(name)
        m.line = self
        m:execute()
        for _, s in ipairs(m.states) do
            local state = require(s)
            state.m = m
            state:init_subscribe()
        end
    end
end

function line:run()
    state.running = true
    --state:setLed("green")
    bus:publish(self.name,'run', {})
end

function line:stop()
    state.running = false
    state.led.color = "yellow"
    self:publish(self.name,'stop', {})
end

function line:pause()
    self:publish(self.name,'pause',{})
end

function line:onEvent(data)

end

return line

