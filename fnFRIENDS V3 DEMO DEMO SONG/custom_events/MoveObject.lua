function onEvent(name, value1, value2)
    if name == 'MoveObject' then
        -- Parsear los valores de value1
        local timeAndCoords = split(value1, ":") -- Dividir por ":"
        local moveTime = tonumber(timeAndCoords[1]) -- Tiempo en segundos
        local coords = split(timeAndCoords[2], ",") -- Dividir por ","
        local targetX = tonumber(coords[1]) -- Coordenada X
        local targetY = tonumber(coords[2]) -- Coordenada Y

        -- Obtener el tag del objeto o personaje a mover
        local objectTag = value2

        -- Verificar si el objeto es un personaje o un sprite
        if objectTag == 'bf' then
            -- Mover player1 (Boyfriend)
            doTweenX('bf_x', 'boyfriend', targetX, moveTime, 'linear')
            doTweenY('bf_y', 'boyfriend', targetY, moveTime, 'linear')
        elseif objectTag == 'dad' then
            -- Mover player2 (Dad)
            doTweenX('dad_x', 'dad', targetX, moveTime, 'linear')
            doTweenY('dad_y', 'dad', targetY, moveTime, 'linear')
        elseif objectTag == 'gf' then
            -- Mover player3 (Girlfriend)
            doTweenX('gf_x', 'gf', targetX, moveTime, 'linear')
            doTweenY('gf_y', 'gf', targetY, moveTime, 'linear')
        elseif luaSpriteExists(objectTag) then
            -- Mover un sprite en el escenario
            doTweenX(objectTag .. '_x', objectTag, targetX, moveTime, 'linear')
            doTweenY(objectTag .. '_y', objectTag, targetY, moveTime, 'linear')
        else
            -- Si el objeto no existe, mostrar un error en consola
            debugPrint('Error: El objeto o personaje con el tag "' .. objectTag .. '" no existe.')
        end
    end
end

-- Función auxiliar para dividir cadenas
function split(input, delimiter)
    local result = {}
    for match in (input .. delimiter):gmatch("(.-)" .. delimiter) do
        table.insert(result, match)
    end
    return result
end