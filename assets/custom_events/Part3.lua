function onCreatePost()
makeLuaSprite('rock1', 'stages/p2/rock', 1150, -150);
addLuaSprite('rock1', false)
scaleObject('rock1', 0.8, 0.8)

makeLuaSprite('rock2', 'stages/p2/rock1', -1220, -250);
addLuaSprite('rock2', false)
scaleObject('rock2', 0.8, 0.8)

makeLuaSprite('rock3', 'stages/p2/rock2', 0, -150);
addLuaSprite('rock3', false)
scaleObject('rock3', 0.8, 0.8)

makeAnimatedLuaSprite('fireBG','stages/p2/FireBG', -1180, -290)
addAnimationByPrefix('fireBG','FIRE instancia','FIRE instancia',24,true)
scaleObject('fireBG', 1, 1)
addLuaSprite('fireBG', false)

makeLuaSprite('b1', 'stages/p2/palo1', 420, 280);
addLuaSprite('b1', false)
scaleObject('b1', 0.9, 0.9)

makeLuaSprite('b2', 'stages/p2/palo2', 1240, 260);
addLuaSprite('b2', false)
scaleObject('b2', 0.8, 0.8)

makeLuaSprite('b3', 'stages/p2/palo3', 100, 400);
addLuaSprite('b3', false)
scaleObject('b3', 0.8, 0.8)

makeLuaSprite('b4', 'stages/p2/bg', -1020, 20);
addLuaSprite('b4', false)
scaleObject('b4', 0.8, 0.8)

makeLuaSprite('b5', 'stages/p2/rock3', -1150, 630);
addLuaSprite('b5', true)
scaleObject('b5', 0.8, 0.8)

makeLuaSprite('b6', 'stages/p2/rock0', 1280, 630);
addLuaSprite('b6', true)
scaleObject('b6', 0.8, 0.8)

makeLuaSprite('overlay', 'stages/overlay', -65, -30)
addLuaSprite('overlay', true)
scaleObject('overlay', 1.3, 1.3)
setScrollFactor('overlay', 1, 1)
setObjectCamera('overlay', 'Other')
setProperty('overlay.alpha', 0.6)
setProperty('overlay.antialiasing', false)

--Hide
setProperty('rock1.visible', false);
setProperty('rock2.visible', false);
setProperty('rock3.visible', false);


setProperty('fireBG.visible', false);

setProperty('b1.visible', false);
setProperty('b2.visible', false);

setProperty('b3.visible', false);
setProperty('b4.visible', false);
setProperty('b5.visible', false);
setProperty('b6.visible', false);

setProperty('overlay.visible', false);

end

function onEvent(n, v1, v2)
	if n == 'Part3' then
   if v1 == '1' then
triggerEvent('Change Character', 'dad', 'p3exe')

doTweenAlpha('FadeEXE1', 'healthBar', 1, 5, 'sineIn');
doTweenAlpha('FadeEXE2', 'iconP1', 1, 5, 'sineIn');
doTweenAlpha('FadeEXE3', 'iconP2', 1, 5, 'sineIn');
doTweenAlpha('FadeEXE4', 'iconP2', 1, 5, 'sineIn');
doTweenAlpha('FadeEXE5', 'scoreTxt', 1, 5, 'sineIn');
doTweenAlpha('BlackFADE', 'black', 0, 5, 'sineIn');
doTweenZoom('zoom1', 'camGame', 0.65, 5, 'sineOut')

setProperty('cameraSpeed',1.2)
setProperty('defaultCamZoom', 0.65)
setProperty('rock1.visible', true);
setProperty('rock2.visible', true);
setProperty('rock3.visible', true);

setProperty('fireBG.visible', true);

setProperty('b1.visible', true);
setProperty('b2.visible', true);

setProperty('b3.visible', true);
setProperty('b4.visible', true);
setProperty('b5.visible', true);
setProperty('b6.visible', true);

setProperty('stage1.visible', false);
setProperty('stage2.visible', false);
setProperty('blood.visible', false);
setProperty('stage3.visible', false);
setProperty('stage4.visible', false);
setProperty('bird.visible', false);
setProperty('stage5.visible', false);


setProperty('shit1.visible', false);
setProperty('shit2.visible', false);
setProperty('shit3.visible', false);

setProperty('stage6.visible', false);
end


if v1 == 'red' then
cameraFlash('other', 'FF0000', '0.5')
setProperty('overlay.visible', true);
end
if v1 == 'end' then
setProperty('camHUD.visible', false);
setProperty('camGame.visible', false);
setProperty('overlay.visible', false);
  end
 end
end
