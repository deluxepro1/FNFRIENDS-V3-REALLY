function onCreate() 

        makeLuaSprite('fondo', 'stages/fornite/fondo', -500, 0)
	addLuaSprite('fondo', false)
        scaleObject('fondo', 7, 5)
        
        makeLuaSprite('nubesFondo', 'espringilNubes', -500, 0)
	addLuaSprite('nubesFondo', false)
        scaleObject('nubesFondo', 7, 5)

        makeLuaSprite('cielo', 'stages/fornite/cielo', 50, 0)
	addLuaSprite('cielo', false)
        scaleObject('cielo', 7, 5)
        setProperty('cielo.alpha', 0)

        makeLuaSprite('torre', 'pillar', 1560, 5410)
 	addLuaSprite('torre', true)
        setObjectOrder('torre', 5, true)
        setProperty('torre.alpha', 0)

        makeAnimatedLuaSprite('lluvia', 'Rain', 0, 0);
        addAnimationByPrefix('lluvia', 'llover', 'raining', 120, true);
        objectPlayAnimation('lluvia', 'llover', true);	
        addLuaSprite('lluvia', false)
        setProperty('lluvia.alpha', 0)
        setObjectCamera('lluvia', 'camHUD')
        scaleObject('lluvia', 2, 2)
        setBlendMode('lluvia', 'screen')  

        makeAnimatedLuaSprite('fuego', 'fire', -1000, 200 );
        addAnimationByPrefix('fuego', 'ardiendo', 'burn', 24, true);
        objectPlayAnimation('fuego', 'ardiendo', true);	
        addLuaSprite('fuego', false)
        setProperty('fuego.alpha', 0)
        scaleObject('fuego', 9, 8)
        setBlendMode('fuego', 'screen')
        setObjectOrder('fuego', 0)
        setScrollFactor('fuego', 0.3, 0.3) 

        makeLuaSprite('Rojo', '', 0, 0)
	setScrollFactor('Rojo', 0, 0)
	makeGraphic('Rojo', 1200, 1200, 'ff0000')
	addLuaSprite('Rojo', false)
        scaleObject('Rojo', 3, 3)
	screenCenter('Rojo', 'xy')
        setProperty('Rojo.alpha', 0) 
end

function onStepHit()
if curStep == 1552 then

   setProperty('fondo.alpha', 0)
   setProperty('cielo.alpha', 1)
   doTweenY('scroll', 'cielo', 9000, 50, 'linear')
   setProperty('torre.alpha', 1)
   setProperty('dad.alpha', 0)

   setProperty('dadPhantom.alpha', 0)
   setProperty('bfPhantom.alpha', 0)

   setProperty('lluvia.alpha', 0.5)
end
end