function onEvent(name, value1, value2)
    if name == "PlayVideo" then
        if value1 == "on" then
            -- Mostrar el video especificado en value2
            playVideo(value2)
        elseif value1 == "off" then
            -- Ocultar el video si está en reproducción
            stopVideo()
        end
    end
end

function playVideo(videoName)
    if videoName ~= "" then
        -- Crear el sprite para el video
        makeLuaSprite('videoSprite', 'videos/' .. videoName, 0, 0)
        
        -- Escalar el sprite para que ocupe toda la pantalla
        setProperty('videoSprite.scale.x', screenWidth / getProperty('videoSprite.width'))
        setProperty('videoSprite.scale.y', screenHeight / getProperty('videoSprite.height'))

        -- Asegurarse de que el sprite esté configurado correctamente
        setObjectCamera('videoSprite', 'hud') -- Colocar en el HUD
        setProperty('videoSprite.alpha', 1) -- Asegurar que es visible
        addLuaSprite('videoSprite', true)

        -- Reproducir el video
        startVideo(videoName)
    else
        debugPrint("Error: No se especificó un video.")
    end
end

function stopVideo()
    -- Eliminar el sprite del video y detener la reproducción
    removeLuaSprite('videoSprite', true)
    debugPrint("")
end