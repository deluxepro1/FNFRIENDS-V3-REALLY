function onCreate()
	-- background shit
makeLuaSprite('blanco', 'stages/sus/blanco', -2000, -1110)
addLuaSprite('blanco', false)
scaleObject('blanco', 2.9, 3)
setScrollFactor('blanco', 0.8, 1)
	
	makeLuaSprite('cielo', 'stages/sus/cielo', -2890, -1110)
addLuaSprite('cielo', false)
scaleObject('cielo', 2.9, 3)
setScrollFactor('cielo', 0.8, 1)

makeLuaSprite('suelo', 'stages/sus/suelo', -2770, -830)
addLuaSprite('suelo', false)
scaleObject('suelo', 3, 2.6)
setScrollFactor('suelo', 1, 1)

makeLuaSprite('nube', 'stages/sus/nube', 1000, 350)
scaleObject('nube', 1.4, 1.1)
setScrollFactor('nube', 1, 1)

makeLuaSprite('nube2', 'stages/sus/nube', -810, 710)
scaleObject('nube2', 1, 1)
setScrollFactor('nube2', 1, 1)

makeLuaSprite('sol', 'stages/sus/sol', 510, 170)
scaleObject('sol', 1, 1)
setScrollFactor('sol', 1, 1)

makeLuaSprite('old', 'stages/sus/old', -2890, -1110)
addLuaSprite('old', false)
scaleObject('old', 2.9, 3)
setScrollFactor('old', 0.8, 1)


	setProperty('blanco.visible', true)
			setProperty('cielo.visible', true)
			setProperty('suelo.visible', true)
			setProperty('cortinas.visible', true)
			setProperty('nube.visible', true)
			setProperty('nube2.visible', true)
     setProperty('sol.visible', true)
      setProperty('old.visible', false)

end
	function onEvent(name,value1,value2)
	if name == 'change' then 
		
		if value1 == 'on' then
				setProperty('cielo.visible', false)
			setProperty('suelo.visible', false)
			setProperty('cortinas.visible', false)
			setProperty('nube.visible', false)
			setProperty('nube2.visible', false)
     setProperty('sol.visible', false)
      setProperty('blanco.visible', true)
      setProperty('gf.visible', false)
	
		end
		if value1 == 'off' then
	 setProperty('pared.visible', false)
			setProperty('cielo.visible', true)
			setProperty('suelo.visible', true)
      setProperty('gf.visible', true)
	
		end
	end
end
	