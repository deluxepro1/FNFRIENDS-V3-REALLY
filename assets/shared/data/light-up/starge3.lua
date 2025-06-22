function onCreate()
	-- background shit


makeLuaSprite('humo', 'stages/welcome/humo', -1000, -750)
addLuaSprite('humo', true)
scaleObject('humo', 2.9, 3)
setScrollFactor('humo', 1, 1)





makeLuaSprite('luz', 'stages/welcome/luz', -1750, -1750)
addLuaSprite('luz', true)
scaleObject('luz', 5, 5)
setScrollFactor('luz', 1, 1)

makeLuaSprite('luz2', 'stages/welcome/luz', -3000, -1750)
addLuaSprite('luz2', true)
scaleObject('luz2', 5, 5)
setScrollFactor('luz2', 1, 1)



	
				
            
	
            
           
           



	
end
	function onEvent(name,value1,value2)
	if name == 'change' then 
		
		if value1 == 'on' then
			setProperty('pared.visible', false)
			setProperty('piso.visible', false)
			setProperty('cortinas.visible', false)
			setProperty('luna.visible', true)
			setProperty('plataforma.visible', true)
    setProperty('gris.visible', true)
	
		end
		if value1 == 'of' then
	 setProperty('pared.visible', true)
			setProperty('piso.visible', true)
			setProperty('cortinas.visible', true)
			setProperty('luna.visible', false)
			setProperty('plataforma.visible', false)
    setProperty('gris.visible', false)
	
		end
	end
end
	