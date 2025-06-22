function onEvent(name, value1, value2)
    if name == "changecolor" then
        local objectTag = value1 -- Tag del objeto en pantalla
        local newColor = value2 -- Color en formato hexadecimal

        -- Verificar si el objeto existe
        if objectTag ~= nil and newColor ~= nil then
            if not luaSpriteExists(objectTag) then
                debugPrint("Error: El objeto '" .. objectTag .. "' no existe.")
                return
            end

            -- Cambiar el color del objeto
            setProperty(objectTag .. ".color", getColorFromHex(newColor))
        else
            debugPrint("Error: Asegúrate de especificar un tag y un color.")
        end
    end
end