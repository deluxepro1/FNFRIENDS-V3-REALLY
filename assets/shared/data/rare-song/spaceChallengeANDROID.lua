-- Configuración
local startTime = 56 -- Tiempo en segundos para iniciar el desafío
local endTime = 82 -- Tiempo en segundos para finalizar el desafío
local spaceInputsNeeded = 500-- Número de inputs necesarios
local spaceInputsCounter = 0 -- Contador de inputs realizados
local isChallengeActive = false -- Bandera para activar/desactivar el desafío
local buttonEnabled = false -- Bandera para el estado del botón visual
local challengeCompleted = false -- Bandera para evitar repetir lógica una vez cumplido

function onCreate()
    -- Crear un sprite de flash inicial
    makeLuaSprite('flashSprite', 'SPACE', 0, 0)
    setObjectCamera('flashSprite', 'other')
    scaleObject('flashSprite', 1.0,1.0)
    setProperty('flashSprite.alpha', 0)
    addLuaSprite('flashSprite', true)

    -- Crear el botón interactivo
    makeAnimatedLuaSprite('boton', 'dodge', 1150, 582.5)
    addAnimationByPrefix('boton', 'nonPress', 'nonPress', 24, false)
    addAnimationByPrefix('boton', 'Pressed', 'Pressed', 12, false)
    addLuaSprite('boton', false)
    setObjectCamera('boton', 'other')
    setProperty('boton.visible', false) -- Ocultar el botón al inicio
end

function onUpdate(elapsed)
    local songTime = getSongPosition() / 1000 -- Convertir tiempo de la canción a segundos

    -- Iniciar el desafío al tiempo especificado
    if songTime >= startTime and not isChallengeActive then
        startChallenge()
    end

    -- Desactivar el desafío al final del tiempo
    if songTime >= endTime and isChallengeActive and not challengeCompleted then
        endChallenge()
    end

    -- Manejar interacción del botón visual si está habilitado
    if buttonEnabled then
        if (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and 
           (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) then
            objectPlayAnimation('boton', 'Pressed', false)
            registerSpaceInput() -- Contar como un input de "space"
        elseif keyPressed('space') then
            objectPlayAnimation('boton', 'Pressed', false)
            registerSpaceInput() -- Contar como un input de "space"
        else
            objectPlayAnimation('boton', 'nonPress', false)
        end
    end
end

-- Iniciar el desafío
function startChallenge()
    isChallengeActive = true
    buttonEnabled = true
    setProperty('boton.visible', true) -- Mostrar el botón
    triggerFlash() -- Mostrar flash inicial
end

-- Finalizar el desafío
function endChallenge()
    isChallengeActive = false
    buttonEnabled = false
    setProperty('boton.visible', false) -- Ocultar el botón
    if spaceInputsCounter < spaceInputsNeeded then
        -- Si no se completaron los inputs, reducir vida
        setProperty('health', 0)
    end
    challengeCompleted = true
end

-- Registrar un input de "space"
function registerSpaceInput()
    if isChallengeActive and spaceInputsCounter < spaceInputsNeeded then
        spaceInputsCounter = spaceInputsCounter + 1
        if spaceInputsCounter >= spaceInputsNeeded then
            onChallengeSuccess()
        end
    end
end

-- Lógica al completar el desafío con éxito
function onChallengeSuccess()
    debugPrint("¡Desafío completado con éxito!")
    buttonEnabled = false
    setProperty('boton.visible', false) -- Ocultar el botón
    challengeCompleted = true
end

-- Flash inicial
function triggerFlash()
    setProperty('flashSprite.alpha', 1)
    doTweenAlpha('flashFade', 'flashSprite', 0, 3, 'linear') -- Duración del flash: 3 segundos
end