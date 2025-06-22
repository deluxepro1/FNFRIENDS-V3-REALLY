-- Configuración inicial
local cameraTarget = 'player2' -- 'player1' para BF, 'player2' para Dad
local startFixTime = 0-- Tiempo de inicio de la fijación (en segundos)
local endFixTime = 47-- Tiempo de fin de la fijación (en segundos)
local isCameraFixed = false -- Bandera para saber si la cámara está fija

function onUpdate(elapsed)
    local currentTime = getSongPosition() / 1000 -- Tiempo actual en segundos

    -- Activar fijación de cámara en el tiempo definido
    if currentTime >= startFixTime and currentTime <= endFixTime and not isCameraFixed then
        isCameraFixed = true
        fixCamera()
    end

    -- Desactivar fijación de cámara cuando el tiempo termine
    if currentTime > endFixTime and isCameraFixed then
        isCameraFixed = false
        releaseCamera()
    end
end

function fixCamera()
    if cameraTarget == 'player1' then
        triggerEvent('Camera Follow Pos', getProperty('boyfriend.x') + 100, getProperty('boyfriend.y') + 150)
    elseif cameraTarget == 'player2' then
        triggerEvent('Camera Follow Pos', getProperty('dad.x') + 100, getProperty('dad.y') + 150)
    end
end

function releaseCamera()
    -- Devuelve la cámara al comportamiento predeterminado
    triggerEvent('Camera Follow Pos', '', '') 
end