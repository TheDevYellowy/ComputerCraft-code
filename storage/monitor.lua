term.clear()
term.setCursorPos(1, 1)

local locations = {}
local connections = {}

local ids = {}
local labels = {}
local labelsToIds = {}

local data = {}
-- data = {
--     id = {
--         currentFuel = 0,
--         maxFuel = 0,
--         x = 0,
--         y = 0,
--         z = 0,
--         -- inventory = {} -- add function to get turtle inventory
--     }
-- }

local eventSub = {}

local sSide = 'top'
rednet.open(sSide)

print(('Computer is running on channel %d'):format(os.getComputerID()))
rednet.broadcast({
    e = 0
})

while true do
    local id, msg = rednet.receive()
    if tonumber(id) == os.getComputerID() then return end
    local e = tonumber(msg.e)
    if e == 0 then
        labels[id] = msg.label
        labelsToIds[msg.label] = id

        connections[id] = true
        locations[id] = msg.loc
        data[id] = msg
    end
end
