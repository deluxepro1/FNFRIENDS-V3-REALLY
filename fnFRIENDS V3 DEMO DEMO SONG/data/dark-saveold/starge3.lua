function onCreate()
	-- background shit


makeLuaSprite('pared2', 'stages/exe/fondo', -600, -600)
addLuaSprite('pared2', false)
scaleObject('pared2', 2.2, 2.,2)
setScrollFactor('pared2', 1, 1)



makeLuaSprite('calle', 'stages/exe/calle', -2000, -850)
addLuaSprite('calle', false)
scaleObject('calle', 2.9, 3)
setScrollFactor('calle', 1, 1)



	

      setProperty('pared2.visible', false)
                  setProperty('calle.visible', false)
                  			      setProperty('fire.visible', false)
                                    setProperty('fuego.visible', false)
                                    					      setProperty('end.visible', true)
            

end
	function onEvent(name,value1,value2)
	if name == 'change' then 
		
		if value1 == 'fase2' then
			      setProperty('pared2.visible', true)
						      setProperty('pared.visible', false)
                                    setProperty('calle.visible', true)

		end
		
		if value1 == 'fase1' then
		
			      setProperty('pared2.visible', false)
						      setProperty('pared.visible', true)
                                    setProperty('calle.visible', false)
                                    
               end
		
		if value1 == 'fire' then
			
						      setProperty('fire.visible', true)
									
			
                  setProperty('fuego.visible', true)          
		      setProperty('pared.visible', false)    
    setProperty('calle.visible', false)
                  
                   
         

		end
	end
end
	