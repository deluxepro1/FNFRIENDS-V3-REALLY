--Create with TieGuo's Lua Stage Editor
function onCreate()
makeLuaSprite('pared', 'stages/corrupted/pared', -2930, -1750)
addLuaSprite('pared', false)
scaleObject('pared', 2.9, 3)
setScrollFactor('pared', 1, 1)

makeLuaSprite('piso', 'stages/corrupted/suelo', -2880, -2290)
addLuaSprite('piso', false)
scaleObject('piso', 2.9, 3)
setScrollFactor('piso', 1, 1)

makeLuaSprite('niebla', 'stages/corrupted/niebla', -2880, -2290)
addLuaSprite('niebla', true)
scaleObject('niebla', 2.9, 3)
setScrollFactor('niebla', 1, 1)

makeLuaSprite('tele', 'stages/corrupted/tele',100,-500)
addLuaSprite('tele', false)
scaleObject('tele', 1.4, 1.4)
setScrollFactor('tele', 1, 1)

makeLuaSprite('gris', 'stages/corrupted/oscuridad', -10, -20)
addLuaSprite('gris', false)
scaleObject('gris', 1.4, 1.5)
setScrollFactor('gris', 1, 1)
setObjectCamera('gris', 'camOTHER')


makeLuaSprite('cortinas', 'stages/corrupted/cortinas', -1500, -1750)
addLuaSprite('cortinas', false)
scaleObject('cortinas', 1.8, 2.6)
setScrollFactor('cortinas', 1, 1)

makeLuaSprite('randomSprite1', 'stages/corrupted/1', 100, -500)
scaleObject('randomSprite1', 1.4, 1.4)
makeLuaSprite('randomSprite2', 'stages/corrupted/2', 100, -500)
scaleObject('randomSprite2', 1.4, 1.4)
makeLuaSprite('randomSprite3', 'stages/corrupted/3', 100, -500)
scaleObject('randomSprite3', 1.4, 1.4)


addLuaSprite('piso', false);
	addLuaSprite('cortinas', false);
addLuaSprite('pared', false);
addLuaSprite('tele', false);
addLuaSprite('gris', true);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

