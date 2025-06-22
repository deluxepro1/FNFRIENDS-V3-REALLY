--Create with TieGuo's Lua Stage Editor
function onCreate()
makeAnimatedLuaSprite('personas', 'personas', -800, 720)
addLuaSprite('personas', true)
addAnimationByPrefix('personas', 'idle', 'personaspendejas', 24, false)
scaleObject('personas', 2.6, 3)
setScrollFactor('personas', 1, 1)
end
function onBeatHit()
if curBeat % 2 == 0 then
   objectPlayAnimation('personas', 'idle'); --aqui se carga la animacion
 end
end