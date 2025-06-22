--Create with TieGuo's Lua Stage Editor
function onCreate()
makeLuaSprite('pared', 'stages/gd/fondo3', -600, -750)
addLuaSprite('pared', false)
scaleObject('pared', 1, 1)
setScrollFactor('pared', 1, 1)

makeLuaSprite('piso', 'stages/gd/piso', -500, -700)
addLuaSprite('piso', false)
scaleObject('piso', 2, 2)
setScrollFactor('piso', 1, 1)


addLuaSprite('piso', false);


addLuaSprite('pared', false);



	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

