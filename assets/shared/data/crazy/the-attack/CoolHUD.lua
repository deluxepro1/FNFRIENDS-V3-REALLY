local Intro = {
	'Background por deluxe',
	'Mod por deluxepro y jc',
	'estas jugando : the attack'
}


function onCreatePost()
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('timeBar.visible', false)
	setProperty('timeBarBG.visible', false)
	
	makeLuaSprite('bartop', nil, 0, -35)
	makeGraphic('bartop', 1280, 100, '000000')
	addLuaSprite('bartop', false)
	setObjectCamera('bartop', 'hud')
	setScrollFactor('bartop', 0, 0)

	makeLuaSprite('barbot', nil, 0, 655)
	makeGraphic('barbot', 1280, 100, '000000')
	addLuaSprite('barbot', false)
	setScrollFactor('barbot', 0, 0)
	setObjectCamera('barbot', 'hud')
	
	for i = 1, #Intro do
		makeLuaText('Intro'..i, Intro[i], 1000, 1500, 240+i*50)
		setTextSize('Intro'..i, 23)
		addLuaText('Intro'..i)
		setTextAlignment('Intro'..i, 'right')
	end
	
	if downscroll then
		thingY = 50
		setProperty('scoreTxt.y', 20)
	else
		thingY = 530
		setProperty('scoreTxt.y', 660)
	end
	
	makeLuaText('healthTXTBF', '64646', 0, 1180, thingY+100)
	setTextSize('healthTXTBF', 23)
	addLuaText('healthTXTBF');
	
	makeLuaText('healthTXTDAD', '64646', 0, 90, thingY+100)
	setTextSize('healthTXTDAD', 23)
	addLuaText('healthTXTDAD');
	
	addHaxeLibrary('SUtil')
end

function onUpdatePost()
	setProperty('iconP1.x', 1130)
	setProperty('iconP2.x', 40)
	
	health = getProperty('health')
	animHealth = (health/2)*100
	idk = math.ceil(animHealth)
	dadidk = 100-idk
	if idk <= 100 then
		setTextString('healthTXTBF', idk..'%')
		setTextString('healthTXTDAD', dadidk..'%')
	end
end

function onSongStart()
	

	runHaxeCode([[
		--SUtil.applicationAlert('Maker', 'Mod Make By TieGuo');
	]])
end

function onStepHit()
	for i = 1, #Intro do
		if curStep == 2+3*i then
			doTweenX('Intro'..i, 'Intro'..i, 250, 1, 'backInOut')
		end
		
		if curStep == 60+i then
			doTweenX('Intro'..i, 'Intro'..i, 1000, 1, 'backInOut')
		end
	end
end