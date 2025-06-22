function onCreate()

        makeLuaSprite('ring1', 'ringHUDThingie', 1120, getProperty('iconP2.y'))
	addLuaSprite('ring1', false)
        setObjectCamera('ring1', 'camHUD')
        scaleObject('ring1', 1.5, 1.5)

        makeLuaSprite('ring2', 'ringHUDThingie', 15, getProperty('iconP1.y'))
	addLuaSprite('ring2', false)
        setObjectCamera('ring2', 'camHUD')
        scaleObject('ring2', 1.5, 1.5)

        scaleObject('timeTxt', 2, 2)
        setTextColor('timeTxt', 'D4982A')
end

-----------------------------------------------------------------------
function onUpdatePost()
for i = 0,3 do

  

setProperty('timeBar.x', 99999)

setProperty('iconP1.x', 1110)
setProperty('iconP2.x', 15)

setObjectOrder('iconP1', 4)
setObjectOrder('iconP2', 4)

setProperty('scoreTxt.y', 9999)
setProperty('healthBar.y', 9999)

setProperty('timeTxt.x', -200)
if not downscroll then

        setProperty('timeTxt.y', 9)
else 

        setProperty('timeTxt.y', 600)
      end
   end
end