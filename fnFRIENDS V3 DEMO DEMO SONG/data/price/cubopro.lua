-- Variables de configuración
local startTime = 133000-- Tiempo en milisegundos (95 segundos) en el que comienza la animación de subida/bajada
local moveAmount = 50 -- Cantidad de movimiento en píxeles (puedes ajustarlo a tu preferencia)
local moveSpeed = 3 -- Velocidad de movimiento. Más bajo es más rápido
local moveDirection = 1 -- Dirección del movimiento: 1 = subir, -1 = bajar
local isMoving = false -- Estado que controla si el personaje está en movimiento
local targetY = 0 -- Posición objetivo a la que se mueve dad (variable para controlar el límite)

function onUpdate(elapsed)
    -- Comenzar el movimiento a partir de los 95 segundos
    if getSongPosition() >= startTime and not isMoving then
        isMoving = true
    end
    
    -- Mover dad de arriba hacia abajo
    if isMoving then
        local currentY = getProperty('dad.y')
        
        -- Si el personaje está subiendo
        if moveDirection == 1 then
            if currentY > targetY + moveAmount then
                -- Si llega al límite superior, empieza a bajar
                moveDirection = -1
                targetY = currentY
            else
                -- Si no, sigue subiendo
                setProperty('dad.y', currentY + moveSpeed)
            end
        -- Si el personaje está bajando
        elseif moveDirection == -1 then
            if currentY < targetY - moveAmount then
                -- Si llega al límite inferior, empieza a subir
                moveDirection = 1
                targetY = currentY
            else
                -- Si no, sigue bajando
                setProperty('dad.y', currentY - moveSpeed)
            end
        end
    end
end