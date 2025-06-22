function onEvent(name, value1, value2)
	if name == 'BlackOut' then
		if value1 == 'true' then
		makeLuaSprite('BlackFlash', 'blackout', -1700, -1000);
		scaleObject('BlackFlash', 18, 22);
		addLuaSprite('BlackFlash', true)
		setObjectCamera('black_vignette', 'other');
		setProperty('BlackFlash.visible', true);
		elseif value1 == 'false' then
		setProperty('BlackFlash.visible', false)
			end
		end
	end