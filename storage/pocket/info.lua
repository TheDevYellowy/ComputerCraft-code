local function clear()
    term.clear()
    term.setCursorPos(1, 1)
end

clear()

peripheral.find('modem', rednet.open)
local pretty = require "cc.pretty"

local args = { ... }
local name = args[1]

rednet.broadcast({
    e = 7,
    label = tostring(name)
})

local i = 5
local _, msg
while i > 1 do
    clear()
    print('Getting data .')
    _, msg = rednet.receive(nil, 1)
    print(_)
    if _ then break end

    clear()
    print('Getting data ..')
    _, msg = rednet.receive(nil, 1)
    print(_)
    if _ then break end

    clear()
    print('Getting data ...')
    _, msg = rednet.receive()
    print(_)
    if _ then break end

    clear()
    print(i)
    i = i - 1
end

clear()

if not _ then
    msg.error = 'No data received from the main pc'
end

pretty.pretty_print(msg)
