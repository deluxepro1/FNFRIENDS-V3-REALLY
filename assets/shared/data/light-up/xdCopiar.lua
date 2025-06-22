-- Variables globales
local objectTag = "luz2" -- Cambia esto al tag del objeto que deseas modificar

function onCreate()
    -- Verificar si el objeto existe en pantalla
    if not luaSpriteExists(objectTag) then
        debugPrint("Error: '" .. objectTag .. "'")
        return
    end
end

function onUpdate()
    -- Verificar teclas presionadas
    if keyJustPressed('up') then
        setProperty(objectTag .. '.color', getColorFromHex('FF0000')) -- Rojo
    elseif keyJustPressed('down') then
        setProperty(objectTag .. '.color', getColorFromHex('00FF00')) -- Verde
    elseif keyJustPressed('left') then
        setProperty(objectTag .. '.color', getColorFromHex('0000FF')) -- Azul
    elseif keyJustPressed('right') then
        setProperty(objectTag .. '.color', getColorFromHex('FFFF00')) -- Amarillo
    end
end