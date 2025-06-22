function onCreate()
	-- background shit
makeAnimatedLuaSprite('fuego', 'fire2', -1700, -700);
        addAnimationByPrefix('fuego', 'ardiendo', 'burn', 24, true);
        objectPlayAnimation('fuego', 'ardiendo', true);	
        addLuaSprite('fuego', false)
        setProperty('fuego.alpha', 0)
        scaleObject('fuego', 9, 8)
        setBlendMode('fuego', 'screen')
        setObjectOrder('fuego', 0)
        setScrollFactor('fuego', 0.3, 0.3) 

	setProperty('fuego.visible', false)
			

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
	