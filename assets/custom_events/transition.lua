function onEvent(name, value1, value2)
	if name == "transition" then
		makeLuaSprite('image', value1, -600, -300);
		addLuaSprite('image', true);
		setProperty('image.alpha',0)
		doTweenAlpha('flTw','image',1,'linear')
		doTweenColor('hello', 'image', 'FFFFFFFF', 0.001, 'quartIn');
    		scaleObject('image', 3.0, 3.0);
		runTimer('wait', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'image', 0, 0.001, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('image', true);
	end
end