-- Configuración
local startTime = 95 -- Tiempo en segundos para iniciar la reducción del valor Y
local targetY = 500 -- Valor Y al que llegará lentamente
local deathY = 500-- Valor Y donde BF morirá (game over)
local decreaseRate = 350-- Velocidad a la que baja el valor Y por segundo
local increaseRate = 400-- Velocidad a la que sube el valor Y por segundo al presionar la tecla UP

local isReducingY = false -- Bandera para iniciar la reducción del valor Y
local upPressed = false -- Variable para saber si la tecla UP está presionada

function onUpdate(elapsed)
    -- Iniciar la reducción del valor Y cuando se alcance el tiempo especificado
    if getSongPosition() >= startTime * 1000 and not isReducingY then
        isReducingY = true
    end

    -- Obtener el valor actual de Y
    local currentY = getProperty('boyfriend.y')

    -- Reducir el valor Y lentamente si está activo
    if isReducingY and currentY < targetY then
        setProperty('boyfriend.y', math.min(currentY + decreaseRate * elapsed, targetY))
    end

    -- Solo permitir que la tecla UP tenga efecto después de los 90 segundos
    if getSongPosition() >= startTime * 1000 then
        -- Incrementar el valor Y al presionar la tecla UP
        if keyPressed('UP') then
            upPressed = true
        else
            upPressed = false
        end

        if upPressed then
            -- Incrementa el valor Y cuando se presiona la tecla UP
            setProperty('boyfriend.y', math.max(currentY - increaseRate * elapsed, 0)) -- Mínimo 0
        end
    end

    -- Verificar si BF alcanza el valor Y de muerte
    if currentY >= deathY then
        triggerGameOver()
    end
end

function triggerGameOver()
    -- Detener el juego y activar el Game Over
    setProperty('health', 0) -- Poner la vida en 0
    debugPrint("Game Over: BF llegó al límite Y.")
    runHaxeCode([[game.callOnLuas("onGameOverStart")]]) -- Llama al Game Over
end