-- Variables globales
local flashColor = 'FF0000' -- Color del flash (hex rojo)
local flashDuration = 0.3 -- Duración del flash en segundos
local missSound = 'miss_sound' -- Nombre del sonido (debe estar en assets/sounds)
local missCount = 0 -- Contador de fallos
local threshold = 5 -- Barrera inicial de fallos

function onCreate()
    -- Crear un sprite para el flash
    makeLuaSprite('missFlash', '', 0, 0)
    makeGraphic('missFlash', screenWidth, screenHeight, flashColor)
    setObjectCamera('missFlash', 'hud') -- Para que aparezca sobre el HUD
    setProperty('missFlash.alpha', 0) -- Inicia invisible
    addLuaSprite('missFlash', true)
end

function noteMiss(id, direction, noteType, isSustainNote)
    -- Incrementar el contador de fallos
    missCount = missCount + 1

    -- Reducir la vida y activar el flash si los fallos alcanzan la barrera inicial o múltiplos posteriores
    if missCount >= threshold and (missCount - threshold) % 5 == 0 then
        reduceHealth()
        triggerFlash()
    end
end

function reduceHealth()
    local healthPenalty = 0.25 -- Restar 25% de vida por cada múltiplo de 5 fallos adicionales

    -- Aplicar la penalización de vida
    local currentHealth = getProperty('health')
    setProperty('health', math.max(0, currentHealth - healthPenalty))
end

function triggerFlash()
    -- Mostrar el flash rojo y reproducir el sonido
    setProperty('missFlash.alpha', 1)
    doTweenAlpha('missFlashFade', 'missFlash', 0, flashDuration, 'linear')
    playSound(missSound)
end