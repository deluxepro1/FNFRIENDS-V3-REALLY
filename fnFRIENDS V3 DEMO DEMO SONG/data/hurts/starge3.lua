function onCreate()
	-- background shit

makeLuaSprite('cara', 'stages/corrupted/caras',100,-500)
addLuaSprite('cara', false)
scaleObject('cara', 1.4, 1.4)
setScrollFactor('cara', 1, 1)

makeLuaSprite('end', 'stages/corrupted/oscuridad2', 0, 0)
addLuaSprite('end', false)
scaleObject('end', 1, 1)
setScrollFactor('end', 1, 1)
setObjectCamera('end', 'camOTHER')

	

      setProperty('cara.visible', false)
            setProperty('end.visible', false)
            

end
	function onEvent(name,value1,value2)
	if name == 'change' then 
		
		if value1 == 'on' then
			
      setProperty('cara.visible', true)
            setProperty('end.visible', true)
	            setProperty('pared.visible', false)
		end
		if value1 == 'end' then
		
		      setProperty('cara.visible', false)
			            setProperty('pared.visible', false)
	         setProperty('piso.visible', false)
	     	            setProperty('cortinas.visible', false)
	       	            setProperty('bf.visible', false)
         

		end
	end
end
	