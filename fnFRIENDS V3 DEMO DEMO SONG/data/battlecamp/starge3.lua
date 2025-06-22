function onCreate()
	-- background shit


makeLuaSprite('cielo', 'stages/fornite/cielo', -1900, -900)
addLuaSprite('cielo', false)
scaleObject('cielo', 5, 5)
setScrollFactor('cielo', 1, 1)

makeLuaSprite('fondo', 'stages/fornite/fondo', -1300, -900)
addLuaSprite('fondo', false)
scaleObject('fondo', 3.9, 2.7)
setScrollFactor('fondo', 1, 1)



makeLuaSprite('mapa', 'stages/fornite/mapa', -1200, -1000)
addLuaSprite('mapa', false)
scaleObject('mapa', 3.9, 3.4)
setScrollFactor('mapa', 1, 1)

makeLuaSprite('piso', 'stages/fornite/suelo', -1500, -1000)
addLuaSprite('piso', false)
scaleObject('piso', 3.9, 3.4)
setScrollFactor('piso', 1, 1)




makeLuaSprite('roca', 'stages/fornite/roca', -350, -400)
addLuaSprite('roca', false)
scaleObject('roca', 2.1, 2.1)
setScrollFactor('roca', 1, 1)



makeAnimatedLuaSprite('fuego', 'fire', -1700, -700);
        addAnimationByPrefix('fuego', 'ardiendo', 'burn', 24, true);
        objectPlayAnimation('fuego', 'ardiendo', true);	
        addLuaSprite('fuego', false)
        setProperty('fuego.alpha', 0)
        scaleObject('fuego', 9, 8)
        setBlendMode('fuego', 'screen')
        setObjectOrder('fuego', 0)
        setScrollFactor('fuego', 0.3, 0.3) 

makeLuaSprite('plat', 'pillar', -300, 200)
addLuaSprite('plat', false)
scaleObject('plat', 1.3, 1.1)
setScrollFactor('plat', 1, 1)

makeLuaSprite('plat2', 'pillar', 1200, 200)
addLuaSprite('plat2', false)
scaleObject('plat2', 1.3, 1.1)
setScrollFactor('plat2', 1, 1)



			setProperty('cielo.visible', true)
    setProperty('fondo', true)
   setProperty('piso.visible', true)
   setProperty('roca.visible', true)
  setProperty('aire.visible', false)
   setProperty('plat.visible', false)
      setProperty('fuego.visible', false)
            setProperty('mapa.visible', false)
               setProperty('plat2.visible', false)
            
	
end
	function onEvent(name,value1,value2)
	if name == 'change' then 
		
		if value1 == 'on' then
	setProperty('cielo.visible', true)
    setProperty('fondo', false)
   setProperty('piso.visible', false)
  setProperty('aire.visible', true)
   setProperty('plat.visible', true)
         setProperty('fuego.visible', false)
         setProperty('mapa.visible', true)
                        setProperty('plat2.visible', false)

	
		end
		if value1 == 'cin' then
	 setProperty('pared.visible', false)
			setProperty('piso.visible', false)
			setProperty('cortinas.visible', false)
			setProperty('luna.visible', false)
			setProperty('plataforma.visible', false)
    setProperty('gris.visible', false)
   setProperty('lluvia.visible', true)
   addAnimationByPrefix('lluvia', 'a', 'a', 12, true)
	
		end
	end
end
	