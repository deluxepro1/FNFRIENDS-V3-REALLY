-- Configuración
local spriteYStart = -1000 -- Posición inicial en Y del sprite
local spriteYLimit = 0-- Valor Y que indica la "muerte" de player 1 (cuando el sprite llega a este valor)
local decreaseRate = 25-- La velocidad a la que el sprite baja
local increaseRate = 100-- La velocidad a la que el sprite sube al presionar la tecla correspondiente
local sprite = 'hudSprite' -- Nombre del sprite en el HUD
local deathY = 500 -- Valor de Y donde Player 1 muere (Game Over)
local maxY = -1000 -- Posición Y fuera de la pantalla, donde el sprite debe salir de la vista
local stopMoving = false -- Bandera para indicar que el sprite no debe moverse después de salir de la pantalla
local startTime = 91 -- Segundo en la canción cuando el sprite empieza a subir

-- Función para crear el sprite en el HUD
function onCreate()
    makeLuaSprite(sprite, 'muro', 0, spriteYStart) -- Cambia 'path/to/your/asset' por la ruta real del asset
    setObjectCamera(sprite, 'hud') -- Asegúrate de que el sprite esté en el HUD
    addLuaSprite(sprite, true) -- Agrega el sprite al escenario
end

-- Función para manejar la custom note type
function onCreatePost()
    -- Registramos la custom notetype
    makeLuaText('noteType', '', 0, 0, 0) -- No usaremos un texto visual, solo lo registramos
    registerCustomNoteType('customDownArrow', 'customDownArrow') -- Personalizamos la flecha hacia abajo
end

-- Esta función maneja lo que ocurre cuando la custom note type es presionada
function onCustomNoteDown(id, direction, noteType, isSustainNote)
    -- Asegurarse de que es la flecha que activa el cambio
    if noteType == 'customDownArrow' then
        -- Subir el sprite en el HUD al presionar la flecha
        local currentY = getProperty(sprite .. '.y')
        setProperty(sprite .. '.y', math.max(currentY - increaseRate, 0)) -- Subir el sprite (máximo a 0)
    end
end

function onUpdate(elapsed)
    -- Verificar si la canción ha alcanzado el segundo 91
    if getSongPosition() >= startTime * 1000 and not stopMoving then
        -- Mover el sprite hacia arriba hasta que salga de la pantalla
        local currentY = getProperty(sprite .. '.y')
        
        -- Si el sprite no ha salido de la pantalla, sigue moviéndolo hacia arriba
        if currentY > maxY then
            setProperty(sprite .. '.y', currentY - decreaseRate * elapsed)
        else
            -- Una vez que el sprite salga de la pantalla, detén el movimiento
            stopMoving = true
        end
    end

    -- Hacer que el sprite baje en el HUD cada cuadro si no ha salido de la pantalla
    if stopMoving == false then
        local currentY = getProperty(sprite .. '.y')
        if currentY < spriteYLimit then
            -- Reducir su posición Y con el tiempo
            setProperty(sprite .. '.y', currentY + decreaseRate * elapsed)
        end
    end

    -- Verificar si el sprite ha alcanzado el límite y hacer Game Over si es necesario
    if getProperty(sprite .. '.y') >= deathY then
        triggerGameOver()
    end
end

-- Función para activar el Game Over
function triggerGameOver()
    -- Detener la canción y aplicar el Game Over
    setProperty('health', 0) -- Coloca la vida en 0
    debugPrint("Game Over: El sprite alcanzó el límite Y.")
    runHaxeCode([[game.callOnLuas("onGameOverStart")]]) -- Llama al Game Over
end