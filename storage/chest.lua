local modem = peripheral.find('modem');
local CChannel = 0

if modem == nil then os.exit() end
modem.open(CChannel)
print('modem opened on channel ' .. tostring(CChannel))

local event, side, channel, replyChannel, message, distance
repeat
    event, side, channel, replyChannel, message, distance = os.pullEvent('modem_message')
until channel == CChannel

print('Recieved a message ' .. tostring(message))
