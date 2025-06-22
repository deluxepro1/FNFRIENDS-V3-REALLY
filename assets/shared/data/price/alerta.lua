-- Variables globales
local warningSprite = 'low_health_warning' -- Nombre del archivo de la imagen (en assets/images/)
local warningTag = 'warningEffect' -- Nombre del sprite en el escenario
local minHealth = 0.25 -- Nivel de vida en el que aparece la imagen
local maxBlinkRate = 2.5 -- Tiempo máximo del parpadeo a 25% de vida
local minBlinkRate = 0.5 -- Tiempo mínimo del parpadeo a 5% de vida

function onCreate()
    -- Crear el sprite de advertencia
    makeLuaSprite(warningTag, warningSprite, 0, 0)
    setObjectCamera(warningTag, 'hud') -- Ajustar la cámara al HUD
    setProperty(warningTag .. '.alpha', 0) -- Inicia invisible
    addLuaSprite(warningTag, true)
end

function onUpdate(elapsed)
    -- Verificar la vida del jugador 1
    local health = getProperty('health')
    if health <= minHealth then
        -- Calcular velocidad del parpadeo en función de la vida
        local adjustedRate = calculateBlinkRate(health)
        -- Activar el parpadeo si no está ya activo
        if not isTweening(warningTag) then
            doTweenAlpha('blinkIn', warningTag, 1, adjustedRate / 2, 'linear')
        end
    else
        -- Si la vida está por encima del umbral, mantener invisible
        cancelTween('blinkIn')
        cancelTween('blinkOut')
        setProperty(warningTag .. '.alpha', 0)
    end
end

function calculateBlinkRate(health)
    -- Mapear el rango de vida [0.05, 0.25] a [0.5, 2.5]
    local clampedHealth = math.max(0.05, math.min(0.25, health)) -- Limitar vida entre 5% y 25%
    return minBlinkRate + (maxBlinkRate - minBlinkRate) * ((clampedHealth - 0.05) / (0.25 - 0.05))
end

-- Controlar el parpadeo con tweens
function onTweenCompleted(tag)
    if tag == 'blinkIn' then
        -- Cuando llega a ser completamente visible, iniciar el desvanecimiento
        local health = getProperty('health')
        local adjustedRate = calculateBlinkRate(health)
        doTweenAlpha('blinkOut', warningTag, 0, adjustedRate / 2, 'linear')
    elseif tag == 'blinkOut' then
        -- Cuando llega a ser invisible, iniciar el aparecer de nuevo
        local health = getProperty('health')
        local adjustedRate = calculateBlinkRate(health)
        doTweenAlpha('blinkIn', warningTag, 1, adjustedRate / 2, 'linear')
    end
end

-- Función para verificar si un tween está activo
function isTweening(object)
    return getProperty(object .. '.alpha') > 0
end