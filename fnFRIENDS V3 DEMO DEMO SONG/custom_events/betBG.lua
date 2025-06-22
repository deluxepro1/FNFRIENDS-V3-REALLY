function onBeatHit()
if curBeat %betBG == 0 then
triggerEvent('gaszoom')
end
end
function onCreatePost()
	   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1880,1320,'ffffff')
	      addLuaSprite('flash', false);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
		setProperty('flash.alpha',0)
end
function onEvent(n,v1,v2)
	if n == 'gaszoom' then
		setProperty('flash.alpha',0.147)
		doTweenAlpha('flTw','flash',0,0.3,'linear')

elseif n == 'betBG' then
betBG = v1

end
end