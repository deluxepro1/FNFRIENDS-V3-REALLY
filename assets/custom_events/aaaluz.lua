function onEvent(name, value1, value2)
    if name == 'aaaluz' then
        local pos = value1
        if pos == 'bf' then
            setProperty('luz.x', -1750)
            setProperty('luz.y', -1750)
        elseif pos == 'dad' then
            setProperty('luz.x', -3000)
            setProperty('luz.y', -1750)
        end
    end
end