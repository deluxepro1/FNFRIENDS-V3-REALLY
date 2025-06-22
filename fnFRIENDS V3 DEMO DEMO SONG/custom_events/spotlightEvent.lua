function onCreate()

      makeLuaSprite('light', 'light', getProperty('boyfriend.x')+ 30, getProperty('boyfriend.y')+ -2000)
      addLuaSprite('light', true)
      setObjectOrder('light', 5)
      setBlendMode('light', 'add')
      scaleObject('light', 0.7, 3)
      setProperty('light.color', getColorFromHex('FFFFFF'))
      setProperty('light.alpha', 0)
  end
function onEvent(n,v1,v2)
   if n == "spotlightEvent" then
        if v1 == "on" then 

      setProperty('light.alpha', 1)
      --doTweenAlpha('darken', 'fondo', 0.5, 1.5, 'linear')
   elseif v1 == 'off' then 

      setProperty('light.alpha', 0)
    --  doTweenAlpha('clearer', 'fondo', 1, 1.5, 'linear')
      end
   end
end
