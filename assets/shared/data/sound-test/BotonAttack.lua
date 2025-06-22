
state = true;
shouldAdd = true;

function onUpdate(elapsed)
	if (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 150) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyPressed('space') then
		objectPlayAnimation('BotonAttack', 'Pressed', true);
	else
		objectPlayAnimation('BotonAttack', 'nonPress', true);
		
	end
end

function onCreate()  --random shit lol
	makeAnimatedLuaSprite('BotonAttack', 'BotonAttack', 20, 582.5);
	addAnimationByPrefix('BotonAttack', 'nonPress', 'nonPress', 24, false);
	addAnimationByPrefix('BotonAttack', 'Pressed', 'Pressed', 12, true);
	addLuaSprite('BotonAttack', false);
	setObjectCamera('BotonAttack', 'other');
end
