--Based off of FNF: Madness Vandalization original made by SizzlingCorp
--Remade by BlueColorsin
----------------------------------------------------------------------
function onEvent(tag, var1, var2)
    if tag == 'Rebounced' then
        toggle = tonumber(var1)

        angle = tonumber(splitStr(var2, ',')[1])
        intensity = tonumber(splitStr(var2, ',')[2])
        bounceY = tonumber(splitStr(var2, ',')[3])

        if toggle == 0 then

            local x = {'angleGame', 'angleHUD', 'XGame', 'YHUD'}
            for i = 1,4 do cancelTween(x[i]) end

            doTweenAngle('resetgame', 'camGame', 0, Cro, 'cubeOut');
            doTweenAngle('resetHUD', 'camHUD', 0, Cro, 'cubeOut');
            doTweenX('resetgame2', 'camGame', 0, Cro, 'linear')
            doTweenX('resetHUD2', 'camHUD', 0, Cro, 'linear')
      end
   end
end
----------------------------------------------------------------------
function onBeatHit()
  Cro = crochet / 1000
    if toggle == 1 then
       if curBeat % 2 == 0 then

            AngleBitch = angle
        else
            AngleBitch = -angle

        end

        setProperty('camGame.angle', AngleBitch * intensity);
        setProperty('camHUD.angle', -AngleBitch * intensity);
        doTweenAngle('angleGame', 'camGame', AngleBitch, Cro);
        doTweenAngle('angleHUD', 'camHUD', -AngleBitch, Cro);
        doTweenX('YHUD', 'camHUD', AngleBitch*8, Cro, 'linear')
        doTweenX('XGame', 'camGame', -AngleBitch*8, Cro, 'linear')

        doTweenY('YHUD1', 'camHUD', -bounceY, Cro * 0.75, "cubeOut")

        triggerEvent("Add Camera Zoom", 0.02, 0.05);
   end
end
----------------------------------------------------------------------
function onTweenCompleted(tag)
    if tag == 'YHUD1' then

      doTweenY('YHUD2', 'camHUD', 0, Cro * 0.25, "cubeIn")
   end
end
----------------------------------------------------------------------
function splitStr(inputstr, sep)
    local t = {}
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do

        table.insert(t, str)
     end
   return t
end