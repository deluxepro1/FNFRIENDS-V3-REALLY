function onCreate()
	-- background shit


makeLuaSprite('humo', 'stages/welcome/humo', -1000, -750)
addLuaSprite('humo', true)
scaleObject('humo', 2.9, 3)
setScrollFactor('humo', 1, 1)


makeAnimatedLuaSprite('fuego', 'fire2', -500,-200);
        addAnimationByPrefix('fuego', 'ardiendo', 'burn', 24, true);
        objectPlayAnimation('fuego', 'ardiendo', true);	
        addLuaSprite('fuego', false)
      
        scaleObject('fuego', 6, 4)
       
        setScrollFactor('fuego', 0.3, 0.3) 




makeLuaSprite('luz', 'stages/welcome/luz', -1750, -1750)
addLuaSprite('luz', true)
scaleObject('luz', 5, 5)
setScrollFactor('luz', 1, 1)

makeLuaSprite('luz2', 'stages/welcome/luz', -3000, -1750)
addLuaSprite('luz2', true)
scaleObject('luz2', 5, 5)
setScrollFactor('luz2', 1, 1)



	
				
  setProperty('fuego.visible', false)          
	
            
           
           



	
end
	function onEvent(name,value1,value2)
	if name == 'change' then 
		
		if value1 == 'on' then
			setProperty('fuego.visible', true)
setProperty('piso.visible', false)
setProperty('pared.visible', false)
setProperty('cortinas.visible', false)
setProperty('tele.visible', false)
			

		end
		if value1 == 'of' then
	 

		end
	end
end
	