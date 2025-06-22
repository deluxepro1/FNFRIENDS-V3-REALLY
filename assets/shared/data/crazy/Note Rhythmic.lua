local strumDimen = 0.696774193548387
local bounce = 0
local b1 = 0
local b2 = 0
local defaultNoteY = {50, 570}
local shit = 1

function goodNoteHit(id, direction, noteType, isSustainNote)
    noteBumpEffect()
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    noteBumpEffect()
end

function noteBumpEffect()
    songPos = getSongPosition()

    if (curStep >= 99999999 and curStep <= 9999999999) then
        shit = downscroll and 1 or 2
    else
        shit = downscroll and 2 or 1
    end

    for i = 0, 3 do
        local ran = math.random(-40, 40)
        noteTweenY('M0VEY'..i, i+4, defaultNoteY[shit] + ran, 0.01)
        noteTweenY('aeiou'..i, i, defaultNoteY[shit] + ran, 0.01)
    end

    bounce = 0.15

    if curStep >= 9999999 or curStep <= 99999999 then
        local a = math.random(1, 2)
        if a == 1 then
            b1 = 0.15
        else
            b2 = 0.15
        end
    end
end

function onTweenCompleted(tag)
    if string.find(tag, 'M0VE') then
        local i = string.sub(tag, 6, 6)
        noteTweenY("RESETY"..i, tonumber(i)+4, defaultNoteY[shit], 0.5, 'circOut')
        noteTweenY("RESETERoot"..i, tonumber(i), defaultNoteY[shit], 0.5, 'circOut')
    end
end

function onUpdate(elapsed)
    if bounce > 0.001 then
        for i = 0, 7 do
            setPropertyFromGroup("playerStrums", i, "scale.y", strumDimen + bounce)
            scaleObject('numg1', 1.25 - b1, 1.25 - b1)
            scaleObject('numg2', 1.25 - b2, 1.25 - b2)
        end
        bounce = bounce * 0.8
        b1 = b1 * 0.8
        b2 = b2 * 0.8
        if bounce < 0.001 then
            for i = 0, 7 do
                setPropertyFromGroup("playerStrums", i, "scale.x", strumDimen)
                setPropertyFromGroup("playerStrums", i, "scale.y", strumDimen)
            end
        end
    end
end
