-- Configuración
local startTime = 138 -- Tiempo en segundos (2:18)
local fadeSpeed = 2.0 -- Velocidad del parpadeo (en segundos)

-- Tags de los objetos en el escenario
local object1 = 'cara'
local object2 = 'end'

-- Estado del parpadeo
local isFlashing = false

function onCreate()
    -- Asegurarse de que los objetos estén en la pantalla
    if not luaSpriteExists(object1) or not luaSpriteExists(object2) then
        debugPrint('Error: Los objetos especificados no existen.')
        return
    end

    -- Inicializar la transparencia de los objetos
    setProperty(object1 .. '.alpha', 1)
    setProperty(object2 .. '.alpha', 1)
end

function onUpdate(elapsed)
    -- Comienza el parpadeo a partir del tiempo establecido
    if getSongPosition() >= startTime * 1000 and not isFlashing then
        isFlashing = true
        startFlashing()
    end
end

function startFlashing()
    -- Iniciar parpadeo de ambos objetos
    if isFlashing then
        -- Parpadeo para el objeto 1
        doTweenAlpha(object1 .. 'FadeOut', object1, 0.2, fadeSpeed, 'linear')
        doTweenAlpha(object2 .. 'FadeOut', object2, 0.2, fadeSpeed, 'linear')
    end
end

function onTweenCompleted(tag)
    if tag == object1 .. 'FadeOut' then
        -- Regresar al estado visible para el objeto 1
        doTweenAlpha(object1 .. 'FadeIn', object1, 1, fadeSpeed, 'linear')
    elseif tag == object1 .. 'FadeIn' then
        -- Volver a iniciar el parpadeo para el objeto 1
        doTweenAlpha(object1 .. 'FadeOut', object1, 0.2, fadeSpeed, 'linear')
    elseif tag == object2 .. 'FadeOut' then
        -- Regresar al estado visible para el objeto 2
        doTweenAlpha(object2 .. 'FadeIn', object2, 1, fadeSpeed, 'linear')
    elseif tag == object2 .. 'FadeIn' then
        -- Volver a iniciar el parpadeo para el objeto 2
        doTweenAlpha(object2 .. 'FadeOut', object2, 0.2, fadeSpeed, 'linear')
    end
end