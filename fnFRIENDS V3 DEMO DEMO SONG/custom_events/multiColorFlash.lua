-- -- Variables globales
local isFlashing = false -- Controla si el flash está activo
local flashColors = {'FF0000', '00FF00', '0000FF', 'FFFF00', 'FF00FF', '00FFFF'} -- Colores HEX
local flashAlpha = 0.6 -- Transparencia del flash
local flashIndex = 1 -- Índice del color actual
local flashInterval = 0.2 -- Intervalo de cambio entre colores
local flashTimer = 0 -- Temporizador interno

function onCreate()
    -- Crear el sprite del flash
    makeLuaSprite('multiColorFlash', '', 0, 0)
    makeGraphic('multiColorFlash', screenWidth, screenHeight, flashColors[1])
    setObjectCamera('multiColorFlash', 'hud')
    setProperty('multiColorFlash.alpha', 0) -- Inicia invisible
    addLuaSprite('multiColorFlash', true)
end

function onEvent(name, value1, value2)
    if name == 'multiColorFlash' then
        if value1 == 'on' then
            isFlashing = true
        elseif value1 == 'off' or value1 == '' then
            isFlashing = false
            setProperty('multiColorFlash.alpha', 0) -- Ocultar el flash
        end
    end
end

function onSongStart()
    -- Asegurarse de que el flash no esté visible al inicio de la canción
    setProperty('multiColorFlash.alpha', 0)
    isFlashing = false
end

function onUpdate(elapsed)
    if isFlashing then
        flashTimer = flashTimer + elapsed
        if flashTimer >= flashInterval then
            flashTimer = 0
            flashIndex = flashIndex + 1
            if flashIndex > #flashColors then
                flashIndex = 1
            end
            setProperty('multiColorFlash.color', getColorFromHex(flashColors[flashIndex]))
            setProperty('multiColorFlash.alpha', flashAlpha)
        end
    end
end