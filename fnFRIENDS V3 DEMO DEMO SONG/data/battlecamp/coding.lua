local missCount = 0
local death = false
local allowCountdown = false
----------------------------------------------------------------
function onCreate() 

        

        makeAnimatedLuaSprite('MC1A', 'DuraCutscene1A', 0, -10)
        addAnimationByPrefix('MC1A', 'AAAAAAAA', 'animación', 23, false)
        addLuaSprite('MC1A', true)
        scaleObject('MC1A', 2.15, 2.2)
        setProperty('MC1A.alpha', 0)
        setObjectCamera('MC1A', 'camHUD')
        objectPlayAnimation('MC1A', 'AAAAAAAA', true);
        setObjectOrder('MC1A', 0)

        makeAnimatedLuaSprite('MC1B', 'DuraCutscene1B', 0, -10)
        addAnimationByPrefix('MC1B', 'AAAAAAAA2', 'animación', 23, false)
        addLuaSprite('MC1B', true)
        scaleObject('MC1B', 2.15, 2.2)
        setProperty('MC1B.alpha', 0)
        setObjectCamera('MC1B', 'camHUD')
        objectPlayAnimation('MC1B', 'AAAAAAAA2', true);
        setObjectOrder('MC1B', 0)

        makeAnimatedLuaSprite('MC2', 'DuraCutscene2', 0, -10)
        addAnimationByPrefix('MC2', 'animación2', 'animación', 24, false)
        addLuaSprite('MC2', true)
        scaleObject('MC2', 2.15, 2.2)
        setProperty('MC2.alpha', 0)
        setObjectCamera('MC2', 'camHUD')
        objectPlayAnimation('MC2', 'animación2', true);
        setObjectOrder('MC2', 0)

        makeLuaSprite('Tapa', '', -20, -200)
	makeGraphic('Tapa', 3840, 2160, '000000')
	addLuaSprite('Tapa', false)
        setObjectCamera('Tapa', "camOTHER")
        setObjectOrder('Tapa', 0)

        makeLuaSprite('intro', 'intro', -20, 0)
	addLuaSprite('intro', false)
        setObjectCamera('intro', "camOTHER")
        setObjectOrder('intro', 0)
        setProperty('intro.alpha', 0)

        makeLuaSprite('retry', 'again', 0, 0)
	addLuaSprite('retry', false)
        setObjectCamera('retry', "camOTHER")
        setObjectOrder('retry', 0)
        setProperty('retry.alpha', 0)

        setProperty('camHUD.alpha', 0)
        precacheSound('gameOverEnd')
        setProperty('cameraSpeed', 0) 

        makeLuaSprite('bar1', '', -70, -104)
        makeGraphic('bar1', 1500, 150, '000000')
        addLuaSprite('bar1', true)
        setObjectCamera('bar1', 'camHUD')
        setObjectOrder('bar1', 0)
        setProperty('bar1.alpha', 0)

        makeLuaSprite('bar2', '', -70, 672)
	makeGraphic('bar2', 1500, 150, '000000')
	addLuaSprite('bar2', true)
        setObjectCamera('bar2', 'camHUD')
        setObjectOrder('bar2', 0)
        setProperty('bar2.alpha', 0)
end
----------------------------------------------------------------------
function onCreatePost() 

        setProperty('gf.visible', false)
end
----------------------------------------------------------------------
function onSongStart() 

        setProperty('cameraSpeed', 0.01)
        doTweenX('lol', 'nubesFondo', 99999, 4000, 'linear')
end
----------------------------------------------------------------------
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then

             allowCountdown = true

                runTimer('Stuff', 0.2, 1)

                return Function_Stop;
end
       return Function_Continue;
end
----------------------------------------------------------------------
function noteMiss(id, direction, noteType, isSustainNote)
     if noteType == '' then
             
             missCount = missCount + 1
             setProperty('Statica.alpha', getProperty('Statica.alpha')+ 0.05)
   end
end
----------------------------------------------------------------------
----------------------------------------------------------------------
function onStepHit()
     if curStep == 1 then
           setProperty('plat.visible', false)
           setProperty('plat2.visible', false)
             setProperty('aire.visible', false)
            doTweenAlpha('hola', 'Tapa', 0, 10, 'linear')
 elseif curStep == 50 then

            doTweenAlpha('los sinso', 'intro', 1, 5, 'linear') 
 elseif curStep == 110 then

            doTweenY('los sinso se va', 'intro', -600, 0.6, 'linear')
            setProperty('cameraSpeed', 1)
 elseif curStep == 128 then

            doTweenAlpha('holaC', 'camHUD', 1, 3, 'linear')
           setObjectCamera('Tapa', "camHUD")
 elseif curStep == 1552 then
           setProperty('bar1.alpha', 1)
           setProperty('bar2.alpha', 1)
           	setProperty('cielo.visible', true)
    setProperty('fondo.visible', false)
   setProperty('piso.visible', false)
  setProperty('aire.visible', true)
   setProperty('plat.visible', true)
   setProperty('roca.visible', false)
   
addAnimationByPrefix('aire', 'aire', 'aire', 24, true)
   setProperty('plat2.visible', true)
 elseif curStep == 1824 then

            setProperty('Tapa.alpha', 1)
            setProperty('lluvia.alpha', 0)
            setProperty('camGame.alpha', 0) 

 elseif curStep == 1856 then

            setProperty('camGame.alpha', 1) 
            setProperty('dadPhantom.alpha', 0)
            setProperty('dad.alpha', 100)
       

 elseif curStep == 1904 then

            doTweenAlpha('hola', 'Tapa', 0, 10, 'linear')
            doTweenAlpha('holaFuego', 'fuego', 1, 5, 'linear')
            setProperty('cielo.alpha', 0)
            setProperty('mapa.visible', false)
             setProperty('plat2.visible', true)
 elseif curStep == 2744 then

           doTweenAlpha('chao', 'camGame', 0, 0.3, 'linear')
 elseif curStep == 2764 then

           doTweenAlpha('chao', 'camHUD', 0, 0.3, 'linear')
   end
end
----------------------------------------------------------------------
---------------------------------