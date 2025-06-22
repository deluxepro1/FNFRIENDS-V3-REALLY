function onEvent(name, v1)
	if name == 'Lights flash' then
		
		flash('000000')
	end
end

function flash(color)
	makeLuaSprite('flash', nil, 0, 0);
	makeGraphic('flash', 1280, 720, color)
	addLuaSprite('flash', false);
	setObjectCamera('flash', 'other')
	setProperty('flash.alpha', 1)
	doTweenAlpha('flTw', 'flash', 0, 0.5, 'linear')
end