function onCreatePost()
makeLuaSprite('stage1', 'stages/sunset/whatsupthesky', -1150, -150);
addLuaSprite('stage1', false)
scaleObject('stage1', 0.8, 0.8)

makeLuaSprite('stage2', 'stages/p1/bigbackrock', -850, -160);
addLuaSprite('stage2', false)
scaleObject('stage2', 0.9, 0.9)

makeAnimatedLuaSprite('blood','stages/p1/blood', 50, -50)
addAnimationByPrefix('blood','blood','blood',8,true)
scaleObject('blood', 1.1, 1.1)
addLuaSprite('blood', false)

makeLuaSprite('stage3', 'stages/p1/backrock', -850, -50);
addLuaSprite('stage3', false)
scaleObject('stage3', 1.1, 1.1)

makeLuaSprite('stage4', 'stages/p1/ohpalms', -550, 150);
addLuaSprite('stage4', false)
scaleObject('stage4', 0.95, 0.95)

makeAnimatedLuaSprite('bird','stages/p1/birds1', 50, 130)
addAnimationByPrefix('bird','birds','birds',10,true)
scaleObject('bird', 0.85, 0.85)
addLuaSprite('bird', false)


makeLuaSprite('stage5', 'stages/p1/floor', -850, 510);
addLuaSprite('stage5', false)
scaleObject('stage5', 0.8, 0.8)

makeAnimatedLuaSprite('shit1','stages/p1/Bunny_kick',320, 480)
addAnimationByPrefix('shit1','rabbit head0000','rabbit head0000',1,true)
addAnimationByPrefix('shit1','fuck rabbit','rabbit head',34,false)
scaleObject('shit1', 0.75, 0.75)
addLuaSprite('shit1', false)

makeLuaSprite('shit2', 'stages/p1/shit1', 200, 860);
addLuaSprite('shit2', true)
scaleObject('shit2', 0.85, 0.85)

makeLuaSprite('shit3', 'stages/p1/shit2', 550, 600);
addLuaSprite('shit3', false)
scaleObject('shit3', 0.85, 0.85)

makeLuaSprite('stage6', 'stages/p1/front', -850, 0);
addLuaSprite('stage6', true)
scaleObject('stage6', 1.1, 1.1)

--HIDE
setProperty('stage1.visible', false);
setProperty('stage2.visible', false);
setProperty('blood.visible', false);
setProperty('stage3.visible', false);
setProperty('stage4.visible', false);
setProperty('bird.visible', false);
setProperty('stage5.visible', false);
setProperty('stage6.visible', false);


setProperty('shit1.visible', false);
setProperty('shit2.visible', false);
setProperty('shit3.visible', false);

end

function onEvent(n, v1, v2)
	if n == 'Part2' then
   if v1 == '1' then

setProperty('bg1.visible', false);

setProperty('bg2.visible', false);

setProperty('bg3.visible', false);


setProperty('agua.visible', falde);


setProperty('bg4.visible', false);

setProperty('bg5.visible', false);

setProperty('bg6.visible', false);


triggerEvent('Change Character', 'dad', 'p2exe')
setProperty('health.visible', true)

setProperty('stage1.visible', true);
setProperty('stage2.visible', true);
setProperty('blood.visible', true);
setProperty('stage3.visible', true);
setProperty('stage4.visible', true);
setProperty('bird.visible', true);
setProperty('stage5.visible', true);
setProperty('stage6.visible', true);


setProperty('shit1.visible', true);
setProperty('shit2.visible', true);
setProperty('shit3.visible', true);
end
if v1 == '0' then

setProperty('healthEXE.alpha', 0)
setProperty('scoreTxt.alpha', 0)
setProperty('healthBar.alpha', 0)
setProperty('iconP1.alpha', 0)
setProperty('iconP2.alpha', 0)
setProperty('cameraSpeed',0.3)
setProperty('defaultCamZoom', 2)
setProperty('black.visible', true);
end
if v1 == 'cam1' then
doTweenZoom('zoom3', 'camGame', 0.85, 0.3, 'sineOut')
setProperty('defaultCamZoom', 0.85)
  end
 end
end