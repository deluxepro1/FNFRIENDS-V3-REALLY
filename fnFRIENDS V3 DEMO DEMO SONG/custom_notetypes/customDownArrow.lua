-- Este script maneja el comportamiento de la custom note "customDownArrow"
function onCreate()
    -- Registrar el sprite del HUD si no existe
  

    -- Registrar la textura personalizada de la nota
    precacheImage('customDownArrow') -- Asegúrate de que "customDownArrow.png" esté en mods/images/
    precacheImage('customDownArrowNOTE') -- Precarga la textura de la nota personalizada

    -- Asignar la textura personalizada
    addNoteType('customDownArrow', 'customDownArrowNOTE') -- Esto enlaza el XML y la imagen
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if noteType == 'customDownArrow' then
        -- Acciones cuando se acierta la flecha personalizada
        local currentY = getProperty('hudSprite.y')
        setProperty('hudSprite.y', currentY - 50) -- Sube el sprite del HUD en 50 unidades
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
    if noteType == 'customDownArrow' then
        -- Acciones cuando se falla la flecha personalizada
        local currentY = getProperty('hudSprite.y')
        setProperty('hudSprite.y', currentY + 25) -- Baja el sprite del HUD en 25 unidades
    end
end

function addNoteType(noteType, texture)
    for i = 0, getProperty('unspawnNotes.length') - 1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == noteType then
            setPropertyFromGroup('unspawnNotes', i, 'texture', texture) -- Asigna la textura
        end
    end
end