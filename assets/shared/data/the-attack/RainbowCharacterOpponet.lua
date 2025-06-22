charn = crabs --Characters Name
detime = 1

local curLightEvent = 0

function onCreatePost()
	setProperty('timeBar.color', getColorFromHex ("313AFF"))
	runTimer('colorTimer1', 0.5)
end

function onTimerCompleted(tag)
	if tag == 'colorTimer1' then
		setProperty('dad.healthColorArray', {255, 00, 000})
		triggerEvent('Change Character', dad, getProperty(charn))
		doTweenColor('dad.ColorTween', 'dad', '0xFFFF0000', detime, 'quadInOut')
		runTimer('colorTimer2', detime)
	end
	if tag == 'colorTimer2' then
		setProperty('dad.healthColorArray', {255, 100, 000})
		triggerEvent('Change Character', dad, getProperty(charn))
		doTweenColor('dad.ColorTween', 'dad', '0xFFFF6400', detime, 'quadInOut')
		runTimer('colorTimer3', detime)
	end
	if tag == 'colorTimer3' then
		setProperty('dad.healthColorArray', {255, 255, 0})
		triggerEvent('Change Character', dad, getProperty(charn))
		doTweenColor('dad.ColorTween', 'dad', '0xFFFFFF00', detime, 'quadInOut')
		runTimer('colorTimer4', detime)
	end
	if tag == 'colorTimer4' then
		setProperty('dad.healthColorArray', {150, 221, 86})
		triggerEvent('Change Character', dad, getProperty(charn))
		doTweenColor('dad.ColorTween', 'dad', '0xFF96DD56', detime, 'quadInOut')
		runTimer('colorTimer5', detime)
	end
	if tag == 'colorTimer5' then
		setProperty('dad.healthColorArray', {0, 221, 86})
		triggerEvent('Change Character', dad, getProperty(charn))
		doTweenColor('dad.ColorTween', 'dad', '0xFF00DD56', detime, 'quadInOut')
		runTimer('colorTimer6', detime)
	end
	if tag == 'colorTimer6' then
		setProperty('dad.healthColorArray', {60, 221, 180})
		triggerEvent('Change Character', dad, getProperty(charn))
		doTweenColor('dad.ColorTween', 'dad', '0xFF3CDDB4', detime, 'quadInOut')
		runTimer('colorTimer7', detime)
	end
	if tag == 'colorTimer7' then
		setProperty('dad.healthColorArray', {100, 100, 255})
		triggerEvent('Change Character', dad, getProperty(charn))
		doTweenColor('dad.ColorTween', 'dad', '0xFF3232FF', detime, 'quadInOut')
		runTimer('colorTimer8', detime)
	end
	if tag == 'colorTimer8' then
		setProperty('dad.healthColorArray', {120, 50, 186})
		triggerEvent('Change Character', dad, getProperty(charn))
		doTweenColor('dad.ColorTween', 'dad', '0xFF7832BA', detime, 'quadInOut')
		runTimer('colorTimer9', detime)
	end
	if tag == 'colorTimer9' then
		setProperty('dad.healthColorArray', {200, 50, 255})
		triggerEvent('Change Character', dad, getProperty(charn))
		doTweenColor('dad.ColorTween', 'dad', '0xFFC832FF', detime, 'quadInOut')
		runTimer('colorTimerA', detime)
	end
	if tag == 'colorTimerA' then
		setProperty('dad.healthColorArray', {255, 100, 255})
		triggerEvent('Change Character', dad, getProperty(charn))
		doTweenColor('dad.ColorTween', 'dad', '0xFFFF64FF', detime, 'quadInOut')
		runTimer('colorTimerB', detime)
	end
	if tag == 'colorTimerB' then
		setProperty('dad.healthColorArray', {255, 100, 100})
		triggerEvent('Change Character', dad, getProperty(charn))
		doTweenColor('dad.ColorTween', 'dad', '0xFFFF6464', detime, 'quadInOut')
		runTimer('colorTimerC', detime)
	end
	if tag == 'colorTimerC' then
		setProperty('dad.healthColorArray', {255, 50, 50})
		triggerEvent('Change Character', dad, getProperty(charn))
		doTweenColor('dad.ColorTween', 'dad', '0xFFFF3232', detime, 'quadInOut')
		runTimer('colorTimer1', detime)
	end
end