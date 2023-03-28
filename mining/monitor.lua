term.clear()
term.setCursorPos(1, 1)

local sSide = 'top'
print('Computer running on channel ' .. os.getComputerID())
rednet.open(sSide)
local monitor = peripheral.find('monitor')

while true do
    local id, msg = rednet.receive(1)
    if msg then
        local per = msg.per
        local done = msg.done
        local total = msg.total

        monitor.clear()
        monitor.setCursorPos(1, 1)

        monitor.write('Current percent done ' ..
        tostring(per) .. '%% (' .. tostring(done) .. '/' .. tostring(total) .. ')')
    end
end
