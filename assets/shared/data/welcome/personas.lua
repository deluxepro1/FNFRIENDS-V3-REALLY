--Create with TieGuo's Lua Stage Editor
function onCreate()
makeAnimatedLuaSprite('personas', 'personas', -1560, 790)
addLuaSprite('personas', false)
addAnimationByPrefix('personas', 'personaspendejas', 'pee', 24, false)
scaleObject('personas', 3.6, 5.4)
setScrollFactor('personas', 1, 1)
if curBeat % 2 == 0 then
   objectPlayAnimation('personas', 'idle'); --aqui se carga la animacion
 end
end