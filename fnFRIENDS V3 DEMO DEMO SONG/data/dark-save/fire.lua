-- -- Configuración inicial
local parpadeoTag = 'fire' -- Objeto que parpadea
local fijoTag = 'fuego' -- Objeto que no parpadea
local fadeSpeed = 1.5 -- Velocidad del parpadeo (segundos para completar un ciclo de aumento y disminución)
local isVisible = { [parpadeoTag] = false, [fijoTag] = false } -- Estados iniciales de visibilidad
local alphaDirection = 1 -- Dirección del cambio de transparencia para el parpadeo

function onCreate()
    -- Configurar el objeto que parpadea
    makeLuaSprite(parpadeoTag, 'stages/exe/fire', 0, 0)
    scaleObject(parpadeoTag, 1.0, 1.0)
    setScrollFactor(parpadeoTag, 1, 1)
    setObjectCamera(parpadeoTag, 'camOTHER')
    setProperty(parpadeoTag .. '.alpha', 0) -- Inicia con transparencia total
    setProperty(parpadeoTag .. '.visible', false) -- Inicia invisible
    addLuaSprite(parpadeoTag, false)

    -- Configurar el objeto que no parpadea
    makeAnimatedLuaSprite(fijoTag, 'fire', -600,-600)
    addAnimationByPrefix(fijoTag, 'ardiendo', 'burn', 24, true)
    objectPlayAnimation(fijoTag, 'ardiendo', true)
    setProperty(fijoTag .. '.alpha', 0) -- Inicia con transparencia total
    scaleObject(fijoTag, 9, 8)
    setScrollFactor(fijoTag, 0.3, 0.3)
    addLuaSprite(fijoTag, false)
        setObjectOrder('fuego', 3)
     

end

function onUpdate(elapsed)
    -- Parpadeo para el objeto 'fire'
    if isVisible[parpadeoTag] then
        local currentAlpha = getProperty(parpadeoTag .. '.alpha')

        -- Cambiar la transparencia según la dirección
        setProperty(parpadeoTag .. '.alpha', currentAlpha + (alphaDirection * elapsed / fadeSpeed))

        -- Invertir dirección si alcanza los límites
        if currentAlpha >= 1 then
            alphaDirection = -1
        elseif currentAlpha <= 0 then
            alphaDirection = 1
        end
    end
end

function onEvent(name, value1, value2)
    if name == 'change' then
        -- Configuración para el objeto que parpadea
        if value1 == 'fire' then
            setProperty(parpadeoTag .. '.visible', true)
            isVisible[parpadeoTag] = true
        elseif value1 == 'off' then
            setProperty(parpadeoTag .. '.visible', false)
            isVisible[parpadeoTag] = false
            setProperty(parpadeoTag .. '.alpha', 0) -- Reinicia la transparencia
        end

        -- Configuración para el objeto que no parpadea
        if value2 == 'fire' then
            setProperty(fijoTag .. '.visible', true)
            setProperty(fijoTag .. '.alpha', 1) -- Mostrar inmediatamente
        elseif value2 == 'off' then
            setProperty(fijoTag .. '.visible', false)
            setProperty(fijoTag .. '.alpha', 0) -- Ocultar inmediatamente
        end
    end
end