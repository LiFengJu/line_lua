bus = {
    id = 0,
    rooms = {},
}

function bus:publish(publisher, topic, data)
    local m = self.rooms[publisher][topic]
    --print(publisher..' '..topic..' | length: '..#m)
    for id, cbk in pairs(m) do
        if cbk~=nil then
            cbk(data)
        end
    end
end

function bus:subscribe(publisher, topic, callback)
    if self.rooms[publisher] == nil then
        self.rooms[publisher] = {}
    end
    if self.rooms[publisher][topic] == nil then
        self.rooms[publisher][topic] = {}
    end
    table.insert(self.rooms[publisher][topic], callback)
end

function bus:remove(topic, id)
    local m = self.rooms[topic]
    if m == nil then
        return
    end
    m[id] = nil
end

return bus