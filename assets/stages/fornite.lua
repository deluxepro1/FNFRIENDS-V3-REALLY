--Create with TieGuo's Lua Stage Editor
function onCreate()


makeLuaSprite('cielo', 'stages/fornite/cielo', -1900, -900)
addLuaSprite('cielo', false)
scaleObject('cielo', 5, 5)
setScrollFactor('cielo', 1, 1)

makeLuaSprite('fondo', 'stages/fornite/fondo', -1300, -900)
addLuaSprite('fondo', false)
scaleObject('fondo', 3.9, 2.7)
setScrollFactor('fondo', 1, 1)


makeLuaSprite('piso', 'stages/fornite/suelo', -1500, -1000)
addLuaSprite('piso', false)
scaleObject('piso', 3.9, 3.4)
setScrollFactor('piso', 1, 1)





addLuaSprite('piso', false);
addLuaSprite('cielo', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

