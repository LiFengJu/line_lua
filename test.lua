a = {
    rooms ={}
}

if a.rooms['1']== nil then
    a.rooms['1'] = {}
    if a.rooms['1']['2'] == nil then
        a.rooms['1']['2'] = {}
    end
    table.insert(a.rooms['1']['2'], 1)
end

print(a.rooms['1']['2'][1])

