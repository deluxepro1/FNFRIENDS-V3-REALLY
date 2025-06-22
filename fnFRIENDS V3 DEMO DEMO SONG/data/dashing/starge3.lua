function onCreate()
	-- background shit

	

makeLuaSprite('pared', 'stages/gd/fondo', -600, -750)
addLuaSprite('pared', false)
scaleObject('pared', 1, 1)
setScrollFactor('pared', 1, 1)

makeLuaSprite('pared2', 'stages/gd/fondo2', -600, -100)
addLuaSprite('pared2', false)
scaleObject('pared2', 3, 3)
setScrollFactor('pared2', 1, 1)

makeLuaSprite('piso', 'stages/gd/piso', -600, -700)
addLuaSprite('piso', false)
scaleObject('piso', 2, 2)
setScrollFactor('piso', 1, 1)

makeAnimatedLuaSprite('aire', 'stages/gd/aire', -10, -20)
addLuaSprite('aire', true)
addAnimationByPrefix('aire', 'aire', 'aire', 24, true)
scaleObject('aire', 1.1, 1.2)
setScrollFactor('aire', 1, 1)
setObjectCamera('aire', 'camHUD')
addAnimationByPrefix('aire', 'aire', 'aire', 24, true)

makeAnimatedLuaSprite('pinchos', 'stages/gd/pinchos', -500, 800)
addLuaSprite('pinchos', true)
addAnimationByPrefix('pinchos', 'pinchos', 'pinchos', 24, true)
scaleObject('pinchos', 2, 2)
setScrollFactor('pinchos', 1, 1)
addAnimationByPrefix('pinchos', 'pinchos', 'pinchos', 24, true)
	
			setProperty('pared.visible', true)
			setProperty('piso.visible', true)
				setProperty('pared2.visible', false)
				setProperty('aire.visible', false)
					setProperty('pinchos.visible', false)
		
end
	function onEvent(name,value1,value2)
	if name == 'change' then 
		
		if value1 == 'on' then
		
		setProperty('pared.visible', false)
			setProperty('piso.visible', false)
				setProperty('pared2.visible', true)
				setProperty('aire.visible', true)
					setProperty('pinchos.visible', true)
		
		

	
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
	