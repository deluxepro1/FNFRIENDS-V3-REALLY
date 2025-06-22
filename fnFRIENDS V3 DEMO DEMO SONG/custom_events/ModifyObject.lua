function onEvent(name, value1, value2)
    if name == 'ModifyObject' then
        -- Determinar si el cambio es de escala (0) o transparencia (1)
        local modificationType = tonumber(value1)

        -- Parsear los valores de value2
        local params = split(value2, ",") -- Dividir por ","
        local objectTag = params[1] -- El tag del objeto o personaje
        local param1 = tonumber(params[2]) -- Primer parámetro (escala o transparencia)
        local param2 = tonumber(params[3]) -- Segundo parámetro (tiempo)

        -- Verificar si el objeto es un personaje o un sprite
        if objectTag == 'bf' then
            applyModification('boyfriend', modificationType, param1, param2)
        elseif objectTag == 'dad' then
            applyModification('dad', modificationType, param1, param2)
        elseif objectTag == 'gf' then
            applyModification('gf', modificationType, param1, param2)
        elseif luaSpriteExists(objectTag) then
            applyModification(objectTag, modificationType, param1, param2)
        else
            debugPrint('Error: El objeto o personaje con el tag "' .. objectTag .. '" no existe.')
        end
    end
end

-- Función para aplicar modificaciones (escala o transparencia)
function applyModification(tag, modificationType, param1, param2)
    if modificationType == 0 then
        -- Escala
        if tag == 'boyfriend' or tag == 'dad' or tag == 'gf' then
            -- Escalar personajes
            doTweenX(tag .. '_scaleX', tag .. '.scale', param1, param2, 'linear')
            doTweenY(tag .. '_scaleY', tag .. '.scale', param1, param2, 'linear')
        else
            -- Escalar objetos LUA (asegurarse de que scale.x y scale.y existan)
            setProperty(tag .. '.scale.x', getProperty(tag .. '.scale.x') or 1)
            setProperty(tag .. '.scale.y', getProperty(tag .. '.scale.y') or 1)
            doTweenX(tag .. '_scaleX', tag .. '.scale.x', param1, param2, 'linear')
            doTweenY(tag .. '_scaleY', tag .. '.scale.y', param1, param2, 'linear')
        end
    elseif modificationType == 1 then
        -- Transparencia
        doTweenAlpha(tag .. '_alpha', tag, param1, param2, 'linear')
    else
        debugPrint('Error: Tipo de modificación desconocido: ' .. modificationType)
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