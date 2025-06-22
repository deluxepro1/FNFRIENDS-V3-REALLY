-- Evento para controlar la aparición y animación de la imagen/tag
local scaleUpTime = 1 -- Tiempo en segundos para que aumente la escala (valor 2)
local scaleDownTime = 1 -- Tiempo en segundos para que disminuya la escala (valor 2)
local scaleUpFactor = 1.5 -- Factor en el que la imagen aumentará de tamaño
local scaleDownFactor = 1 -- Factor de escala al volver a su tamaño original (1)
local scalingInProgress = false -- Flag para saber si estamos en proceso de escalado
local targetTag = '' -- Variable para el tag de la imagen (deberá ser especificado en el evento)

function onEvent(name, value1, value2)
    -- Aquí se toma el tag del objeto (imagen) a modificar
    targetTag = value1

    -- Los valores de tiempo (en segundos) para el aumento y la disminución de la escala
    scaleUpTime = tonumber(value2)
    scaleDownTime = tonumber(value2)

    -- Iniciar el aumento de la escala
    if targetTag ~= '' then
        setProperty(targetTag..'.scale.x', 1) -- Asegura que el objeto empiece en escala 1
        setProperty(targetTag..'.scale.y', 1)
        scalingInProgress = true
        scaleUp(targetTag)
    end
end

-- Función para aumentar la escala
function scaleUp(tag)
    -- Aumentar la escala de la imagen a un factor definido
    doTweenX('scaleUpX', tag, scaleUpFactor, scaleUpTime, 'linear')
    doTweenY('scaleUpY', tag, scaleUpFactor, scaleUpTime, 'linear')
    
    -- Después de un tiempo, disminuir la escala
    runTimer('scaleDown', scaleUpTime)
end

-- Función para disminuir la escala
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'scaleDown' then
        -- Disminuir la escala de la imagen
        doTweenX('scaleDownX', targetTag, scaleDownFactor, scaleDownTime, 'linear')
        doTweenY('scaleDownY', targetTag, scaleDownFactor, scaleDownTime, 'linear')
        scalingInProgress = false
    end
end