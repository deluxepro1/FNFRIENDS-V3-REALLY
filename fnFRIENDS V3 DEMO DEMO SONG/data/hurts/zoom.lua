-- Configuración
local beatZoomAmount = 0.1 -- Cantidad de zoom adicional en cada beat
local beatZoomDuration = 0.1 -- Duración del zoom hacia adelante
local beatResetDuration = 0.05 -- Duración para volver al zoom original
local beatsPerZoom = 4 -- Cada cuántos beats realizar el zoom
local originalZoom = 1 -- Zoom inicial de la cámara

function onSongStart()
    -- Configuración inicial del zoom al comenzar la canción
    setProperty('camGame.zoom', originalZoom) -- Configurar el zoom inicial
end

function onBeatHit()
    -- Solo ejecutar el zoom cada "beatsPerZoom" beats
    if curBeat % beatsPerZoom == 0 then
        -- Hacer un pequeño zoom
        doTweenZoom('beatZoomIn', 'camGame', originalZoom + beatZoomAmount, beatZoomDuration, 'circOut')
        -- Configurar un temporizador para restaurar el zoom
        runTimer('resetZoom', beatZoomDuration)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'resetZoom' then
        -- Restaurar el zoom al original después del zoom
        doTweenZoom('beatZoomOut', 'camGame', originalZoom, beatResetDuration, 'circIn')
    end
end