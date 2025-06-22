-- Configuración
local startTime = 92000 -- 92 segundos en milisegundos (a partir de aquí se fijará la cámara)
local cameraX, cameraY = 0, 0 -- Variables para almacenar las posiciones de la cámara
local cameraSet = false -- Bandera para evitar el cálculo repetido

function onUpdate(elapsed)
    -- Verificar si estamos en el tiempo especificado (92 segundos) y si no se ha calculado la posición de la cámara
    if getSongPosition() >= startTime and not cameraSet then
        -- Obtener las posiciones X e Y de BF y Dad
        local bfX = getProperty('boyfriend.x')
        local bfY = getProperty('boyfriend.y')
        local dadX = getProperty('dad.x')
        local dadY = getProperty('dad.y')

        -- Calcular el punto medio entre BF y Dad
        cameraX = (bfX + dadX) / 2
        cameraY = (bfY + dadY) / 2

        -- Establecer la cámara en el punto medio
        setCameraZoom(1) -- Opcional: ajustar el zoom de la cámara si se desea
        triggerEvent('Camera Follow Pos', cameraX, cameraY)

        -- Marcar que ya se calculó la posición de la cámara
        cameraSet = true
    end
end