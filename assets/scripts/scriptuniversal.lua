function onCreate()
    -- Verificar si está activado el Practice Mode o Botplay
    if getProperty('practiceMode') or botPlay then
        -- Crear la pantalla de error
        makeLuaSprite('errorScreen', '', 0, 0)
        makeGraphic('errorScreen', screenWidth, screenHeight, '000000') -- Pantalla negra
        setObjectCamera('errorScreen', 'other')
        addLuaSprite('errorScreen', true)

        -- Agregar texto de error
        makeLuaText('errorMessage', 'Error: No puedes jugar en Practice Mode o Botplay.\nPor favor, desactiva estas opciones para continuar.', 1000, 0, screenHeight / 2 - 50)
        setTextAlignment('errorMessage', 'center')
        setObjectCamera('errorMessage', 'other')
        setTextSize('errorMessage', 24)
        addLuaText('errorMessage', true)

        -- Detener el juego
        runTimer('closeGame', 3) -- Cierra el juego después de 3 segundos
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'closeGame' then
        endSong() -- Termina la canción (vuelve al menú principal)
    end
end