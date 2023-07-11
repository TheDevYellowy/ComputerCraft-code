local urls = { 'https://raw.githubusercontent.com/TheDevYellowy/ComputerCraft-code/master/storage/pocket/info.lua' }

for _, v in pairs(urls) do
    local bool = shell.run('wget', v)
    print(bool)
    term.scroll(1)
end
