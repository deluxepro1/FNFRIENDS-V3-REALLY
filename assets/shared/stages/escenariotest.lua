--Create with TieGuo's Lua Stage Editor
function onCreate()
makeLuaSprite('pared', 'stages/welcome/pared-new', -1500, -900)
addLuaSprite('pared', false)
scaleObject('pared', 1.45, 1.5)
setScrollFactor('pared', 0, 0)

makeLuaSprite('piso', 'stages/welcome/suelo-new', -1200, -650)
addLuaSprite('piso', false)
scaleObject('piso', 1.45, 1.5)
setScrollFactor('piso', 1, 1)





addLuaSprite('piso', false);
	addLuaSprite('cortinas', true);
addLuaSprite('pared', false);
addLuaSprite('tele', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

