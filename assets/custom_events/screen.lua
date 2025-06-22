function onCreatePost()
makeLuaSprite('doyou', 'stages/you', 0, 0);
addLuaSprite('doyou', true)
scaleObject('doyou', 1, 1)
setObjectCamera('doyou', 'Other')
setProperty('doyou.visible', false)

makeLuaSprite('boring', 'stages/boring', 0, 0);
addLuaSprite('boring', true)
scaleObject('boring', 1, 1)
setObjectCamera('boring', 'Other')
setProperty('boring.visible', false)

makeAnimatedLuaSprite('static','static', 0, 0);
addAnimationByPrefix('static','static idle','static idle',12,true)
scaleObject('static', 1, 1)
addLuaSprite('static', true)
setObjectCamera('static', 'Other')
setProperty('static.visible', false)

makeLuaSprite('black', 'stages/black', -5, -50)
addLuaSprite('black', true)
scaleObject('black', 1.1, 1.1)
setScrollFactor('black', 1, 1)
setObjectCamera('black', 'camHUD')
setProperty('black.antialiasing', false)

setProperty('black.alpha', 1)
setProperty('black.visible', false);
end

function onEvent(n, v1, v2)
	if n == 'screen' then
   if v1 == '1' then
setProperty('doyou.visible', true)
end
if v1 == '2' then
setProperty('boring.visible', true)
end
if v1 == '3' then
setProperty('static.visible', true)
end
if v1 == '4' then
setProperty('black.visible', true);
end
if v1 == '0' then
setProperty('doyou.visible', false)
setProperty('boring.visible', false)
setProperty('static.visible', false)
   end
 end
end