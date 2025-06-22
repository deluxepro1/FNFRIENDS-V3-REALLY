-- Configura aquí el nombre de tu objeto que cambiará de color
local targetObject = 'luz2' -- reemplaza con el nombre real de tu objeto
local originalColor = nil
local colorModeActive = false
local colorModeType = 1
local colorTimer = 0

function onCreatePost()
    -- Guarda el color original al iniciar
    originalColor = getProperty(targetObject .. '.color')
end

function onEvent(name, value1, value2)
    if name == 'objetcolor2' then
        if value1 == 'on' then
            colorModeActive = true
            colorModeType = tonumber(value2)
        elseif value1 == 'off' then
            colorModeActive = false
            setProperty(targetObject .. '.color', originalColor)
        end
    end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if colorModeActive and colorModeType == 1 then
        -- Cambiar color aleatoriamente en modo 1 por cada nota
        setRandomColor()
    end
end

function onUpdate(elapsed)
    if colorModeActive and colorModeType == 2 then
        colorTimer = colorTimer + elapsed
        if colorTimer >= 0.5 then -- cada medio segundo
            setRandomColor()
            colorTimer = 0
        end
    end
end

function setRandomColor()
    local r = math.random(0, 255)
    local g = math.random(0, 255)
    local b = math.random(0, 255)
    setProperty(targetObject .. '.color', getColorFromRGB(r, g, b))
end