--Create with TieGuo's Lua Stage Editor
function onCreate()

makeLuaSprite('pared', 'stages/exe/fondo2', -1000, -300)
addLuaSprite('pared', false)
scaleObject('pared', 2.2, 2.,2)
setScrollFactor('pared', 1, 1)




makeLuaSprite('niebla', 'stages/exe/niebla', -1000, -300)
addLuaSprite('niebla', true)
scaleObject('niebla', 2.2, 2.,2)
setScrollFactor('niebla', 1, 1)

makeLuaSprite('end', 'stages/corrupted/oscuridad2', 0, 0)
addLuaSprite('end', false)
scaleObject('end', 1, 1)
setScrollFactor('end', 1, 1)
setObjectCamera('end', 'camOTHER')







addLuaSprite('pared', false);

addLuaSprite('end', true);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

