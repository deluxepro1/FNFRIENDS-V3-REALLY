-- Configuración
local startTime = 107 -- Segundo en el que comienza el movimiento
local endTime = 130 -- Segundo en el que termina el movimiento
local moveSpeed = 1.5 -- Velocidad del movimiento vertical
local moveAmplitude = 300-- Amplitud del movimiento (en píxeles)
local rotationSpeed = 360 -- Velocidad de rotación (grados por segundo)

local originalYBf = 0 -- Valor Y original de BF
local originalYDad = 0 -- Valor Y original de Dad
local originalAngleBf = 0 -- Ángulo original de BF
local originalAngleDad = 0 -- Ángulo original de Dad

local isMoving = false -- Controla si los personajes se están moviendo

function onCreatePost()
    -- Guardar las posiciones y rotaciones originales de BF y Dad
    originalYBf = getProperty('boyfriend.y')
    originalYDad = getProperty('dad.y')
    originalAngleBf = getProperty('boyfriend.angle')
    originalAngleDad = getProperty('dad.angle')
end

function onUpdate(elapsed)
    local songPos = getSongPosition() / 1000 -- Convertir el tiempo de la canción a segundos

    -- Activar el movimiento al alcanzar el tiempo definido
    if songPos >= startTime and songPos <= endTime then
        isMoving = true
    else
        isMoving = false

        -- Restaurar las posiciones y rotaciones originales al finalizar
        if songPos > endTime then
            setProperty('boyfriend.y', originalYBf)
            setProperty('dad.y', originalYDad)
            setProperty('boyfriend.angle', originalAngleBf)
            setProperty('dad.angle', originalAngleDad)
        end
    end

    -- Si está activo, realizar el movimiento y la rotación
    if isMoving then
        -- Movimiento vertical oscilatorio
        local oscillation = math.sin(songPos * moveSpeed) * moveAmplitude
        setProperty('boyfriend.y', originalYBf + oscillation)
        setProperty('dad.y', originalYDad + oscillation)

        -- Rotación infinita
        local rotation = (songPos * rotationSpeed) % 360
        setProperty('boyfriend.angle', rotation)
        setProperty('dad.angle', rotation)
    end
end