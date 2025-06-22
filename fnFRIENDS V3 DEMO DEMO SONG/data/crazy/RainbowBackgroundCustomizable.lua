Stage = 'luz'
StageT = 'luzTween'
Stageval1 = Stage
detime = 0.5

local curLightEvent = 0

function onCreatePost()
	doTweenColor(StageT, Stage, 990000, detime, 'quadInOut')
	runTimer('colorTimer1', 0.5)
end

function onTimerCompleted(tag)
	if tag == 'colorTimer1' then
		doTweenColor(StageT, Stage, 995500, detime, 'quadInOut')
		runTimer('colorTimer2', detime)
	end
	if tag == 'colorTimer2' then
		doTweenColor(StageT, Stage, 856500, detime, 'quadInOut')
		runTimer('colorTimer3', detime)
	end
	if tag == 'colorTimer3' then
		doTweenColor(StageT, Stage, 259525, detime, 'quadInOut')
		runTimer('colorTimer4', detime)
	end
	if tag == 'colorTimer4' then
		doTweenColor(StageT, Stage, 999050, detime, 'quadInOut')
		runTimer('colorTimer5', detime)
	end
	if tag == 'colorTimer5' then
		doTweenColor(StageT, Stage, 992590, detime, 'quadInOut')
		runTimer('colorTimer6', detime)
	end
	if tag == 'colorTimer6' then
		doTweenColor(StageT, Stage, 991599, detime, 'quadInOut')
		runTimer('colorTimer7', detime)
	end
	if tag == 'colorTimer7' then
		doTweenColor(StageT, Stage, 451580, detime, 'quadInOut')
		runTimer('colorTimer8', detime)
	end
	if tag == 'colorTimer8' then
		doTweenColor(StageT, Stage, 450080, detime, 'quadInOut')
		runTimer('colorTimer9', detime)
	end
	if tag == 'colorTimer9' then
		doTweenColor(StageT, Stage, 800080, detime, 'quadInOut')
		runTimer('colorTimerA', detime)
	end
	if tag == 'colorTimerA' then
		doTweenColor(StageT, Stage, 994075, detime, 'quadInOut')
		runTimer('colorTimerB', detime)
	end
	if tag == 'colorTimerB' then
		doTweenColor(StageT, Stage, 994045, detime, 'quadInOut')
		runTimer('colorTimerC', detime)
	end
	if tag == 'colorTimerC' then
		doTweenColor(StageT, Stage, 990505, detime, 'quadInOut')
		runTimer('colorTimer1', detime)
	end
end