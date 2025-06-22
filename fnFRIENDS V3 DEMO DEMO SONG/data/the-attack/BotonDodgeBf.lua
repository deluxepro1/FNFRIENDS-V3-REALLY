
state = true;
shouldAdd = true;

function onUpdate(elapsed)
	if (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyPressed('space') then
		objectPlayAnimation('BotonDodgeBf', 'Pressed', true);
	else
		objectPlayAnimation('BotonDodgeBf', 'nonPress', true);
		
	end
end

function onCreate()  --random shit lol
	makeAnimatedLuaSprite('BotonDodgeBf', 'BotonDodgeBf', 1150, 582.5);
	addAnimationByPrefix('BotonDodgeBf', 'nonPress', 'nonPress', 24, false);
	addAnimationByPrefix('BotonDodgeBf', 'Pressed', 'Pressed', 12, true);
	addLuaSprite('BotonDodgeBf', false);
	setObjectCamera('BotonDodgeBf', 'other');
end
