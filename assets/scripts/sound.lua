-- Thank you so much XooleDev
-- Pls follow him

SelectAmount = 1
SelectAmountBack = -1

local MaxProductLimit = 11
local MinProductLimit = 1

local TwoProductLimit = 11
local MinTwoProductLimit = 1

local ProductSelected
local TwoSelected

function onCreate()
	initSaveData('DataFolder', 'Folder')
	flushSaveData('DataFolder')
	MoneyAmount = getDataFromSave('DataFolder', 'Money') -- Do NOT Remove Money, unless you're changing all the variables   -- Listen to him 

	if songName == 'Sound Test' then
		function onStartCountdown() 
			if not allowCountdown then
				return Function_Stop
			end
		
			if allowCountdown then
				return Function_Continue
			end
		end
		playMusic('freakyMenu', 0.8, true)

	      makeLuaSprite('firstCodeOff', 'SoundTest/firstCode1', 0, 0)
	      addLuaSprite('firstCodeOff', true)
	      setScrollFactor('firstCodeOff', 1, 1);
            setProperty('firstCodeOff.visible', true)

		  makeLuaSprite('secondCodeOff', 'SoundTest/secondCode1', 0, 0)
		  addLuaSprite('secondCodeOff', true)
		  setScrollFactor('secondCodeOff', 1, 1);
			setProperty('secondCodeOff.visible', true)

	      makeLuaSprite('0', 'SoundTest/numbers/00', 640, 184)
	      addLuaSprite('0', true)
            setProperty('0.visible', true)

	      makeLuaSprite('1', 'SoundTest/numbers/01', 640, 184)
	      addLuaSprite('1', true)
            setProperty('1.visible', false)

		  makeLuaSprite('2', 'SoundTest/numbers/02', 640, 184)
		  addLuaSprite('2', true)
			setProperty('2.visible', false)

		  makeLuaSprite('3', 'SoundTest/numbers/03', 640, 184)
		  addLuaSprite('3', true)
			setProperty('3.visible', false)

		  makeLuaSprite('4', 'SoundTest/numbers/04', 640, 184)
		  addLuaSprite('4', true)
			setProperty('4.visible', false)
  
		  makeLuaSprite('5', 'SoundTest/numbers/05', 640, 184)
		  addLuaSprite('5', true)
			setProperty('5.visible', false)

		  makeLuaSprite('6', 'SoundTest/numbers/06', 640, 184)
	      addLuaSprite('6', true)
			setProperty('6.visible', false)
  
		  makeLuaSprite('7', 'SoundTest/numbers/07', 640, 184)
		  addLuaSprite('7', true)
			setProperty('7.visible', false)
  
		  makeLuaSprite('8', 'SoundTest/numbers/08', 640, 184)
		  addLuaSprite('8', true)
			setProperty('8.visible', false)
  
		  makeLuaSprite('9', 'SoundTest/numbers/09', 640, 184)
		  addLuaSprite('9', true)
			setProperty('9.visible', false)
  
		  makeLuaSprite('10', 'SoundTest/numbers/10', 640, 184)
		  addLuaSprite('10', true)
			setProperty('10.visible', false)
	
		  makeLuaSprite('0Two', 'SoundTest/numbers/00', 640, 264)
		  addLuaSprite('0Two', true)
			setProperty('0Two.visible', true)
  
		  makeLuaSprite('1Two', 'SoundTest/numbers/01', 640, 264)
		  addLuaSprite('1Two', true)
			setProperty('1Two.visible', false)

		  makeLuaSprite('2Two', 'SoundTest/numbers/02', 640, 264)
		  addLuaSprite('2Two', true)
			setProperty('2Two.visible', false)
	
		  makeLuaSprite('3Two', 'SoundTest/numbers/03', 640, 264)
		  addLuaSprite('3Two', true)
			setProperty('3Two.visible', false)

		  makeLuaSprite('4Two', 'SoundTest/numbers/04', 640, 264)
		  addLuaSprite('4Two', true)
			setProperty('4Two.visible', false)
	  
		  makeLuaSprite('5Two', 'SoundTest/numbers/05', 640, 264)
		  addLuaSprite('5Two', true)
			setProperty('5Two.visible', false)

		  makeLuaSprite('6Two', 'SoundTest/numbers/06', 640, 264)
		  addLuaSprite('6Two', true)
			setProperty('6Two.visible', false)
  
		  makeLuaSprite('7Two', 'SoundTest/numbers/07', 640, 264)
		  addLuaSprite('7Two', true)
			setProperty('7Two.visible', false)
	  
		  makeLuaSprite('8Two', 'SoundTest/numbers/08', 640, 264)
		  addLuaSprite('8Two', true)
			setProperty('8Two.visible', false)
  
		  makeLuaSprite('9Two', 'SoundTest/numbers/09', 640, 264)
		  addLuaSprite('9Two', true)
			setProperty('9Two.visible', false)
		
		  makeLuaSprite('10Two', 'SoundTest/numbers/10', 640, 264)
		  addLuaSprite('10Two', true)
			setProperty('10Two.visible', false)

		ProductSelected = 0

		TwoSelected = 0

        runTimer('WaitSelect', 0.1, 1)

		return Function_Continue;
	end
end

function onUpdate()
	if songName == 'Sound Test' then
              if keyJustPressed('pause') then
			exitMenu()
              end

		if keyboardJustPressed('SPACE') then
				playSound('play');
		end

		if keyboardJustPressed('RIGHT') or keyboardJustPressed('LEFT') then

			if ProductSelected >= MaxProductLimit and keyboardJustPressed('RIGHT') then
				ProductSelected = 1
			elseif ProductSelected <= MinProductLimit and keyboardJustPressed('LEFT') then
				ProductSelected = 11
			else
				if keyboardJustPressed('RIGHT') then
					ProductSelected = ProductSelected + 1
				end
				if keyboardJustPressed('LEFT') then
					ProductSelected = ProductSelected - 1
				end
			end
			if ProductSelected == 1 then
                        setProperty('0.visible', true)
                        setProperty('1.visible', false)
						setProperty('2.visible', false)
                        setProperty('3.visible', false)
                        setProperty('4.visible', false)
                        setProperty('5.visible', false)
						setProperty('6.visible', false)
						setProperty('7.visible', false)
                        setProperty('8.visible', false)
                        setProperty('9.visible', false)
                        setProperty('10.visible', false)
                  elseif ProductSelected == 2 then
                        setProperty('0.visible', false)
                        setProperty('1.visible', true)
						setProperty('2.visible', false)
                        setProperty('3.visible', false)
                        setProperty('4.visible', false)
                        setProperty('5.visible', false)
						setProperty('6.visible', false)
						setProperty('7.visible', false)
                        setProperty('8.visible', false)
                        setProperty('9.visible', false)
                        setProperty('10.visible', false)
					elseif ProductSelected == 3 then
                        setProperty('0.visible', false)
                        setProperty('1.visible', false)
						setProperty('2.visible', true)
                        setProperty('3.visible', false)
                        setProperty('4.visible', false)
                        setProperty('5.visible', false)
						setProperty('6.visible', false)
						setProperty('7.visible', false)
                        setProperty('8.visible', false)
                        setProperty('9.visible', false)
                        setProperty('10.visible', false)
					elseif ProductSelected == 4 then
                        setProperty('0.visible', false)
                        setProperty('1.visible', false)
						setProperty('2.visible', false)
                        setProperty('3.visible', true)
                        setProperty('4.visible', false)
                        setProperty('5.visible', false)
						setProperty('6.visible', false)
						setProperty('7.visible', false)
                        setProperty('8.visible', false)
                        setProperty('9.visible', false)
                        setProperty('10.visible', false)
					elseif ProductSelected == 5 then
                        setProperty('0.visible', false)
                        setProperty('1.visible', false)
						setProperty('2.visible', false)
                        setProperty('3.visible', false)
                        setProperty('4.visible', true)
                        setProperty('5.visible', false)
						setProperty('6.visible', false)
						setProperty('7.visible', false)
                        setProperty('8.visible', false)
                        setProperty('9.visible', false)
                        setProperty('10.visible', false)
					elseif ProductSelected == 6 then
                        setProperty('0.visible', false)
                        setProperty('1.visible', false)
						setProperty('2.visible', false)
                        setProperty('3.visible', false)
                        setProperty('4.visible', false)
                        setProperty('5.visible', true)
						setProperty('6.visible', false)
						setProperty('7.visible', false)
                        setProperty('8.visible', false)
                        setProperty('9.visible', false)
                        setProperty('10.visible', false)
					elseif ProductSelected == 7 then
                        setProperty('0.visible', false)
                        setProperty('1.visible', false)
						setProperty('2.visible', false)
                        setProperty('3.visible', false)
                        setProperty('4.visible', false)
                        setProperty('5.visible', false)
						setProperty('6.visible', true)
						setProperty('7.visible', false)
                        setProperty('8.visible', false)
                        setProperty('9.visible', false)
                        setProperty('10.visible', false)
					elseif ProductSelected == 8 then
                        setProperty('0.visible', false)
                        setProperty('1.visible', false)
						setProperty('2.visible', false)
                        setProperty('3.visible', false)
                        setProperty('4.visible', false)
                        setProperty('5.visible', false)
						setProperty('6.visible', false)
						setProperty('7.visible', true)
                        setProperty('8.visible', false)
                        setProperty('9.visible', false)
                        setProperty('10.visible', false)
					elseif ProductSelected == 9 then
                        setProperty('0.visible', false)
                        setProperty('1.visible', false)
						setProperty('2.visible', false)
                        setProperty('3.visible', false)
                        setProperty('4.visible', false)
                        setProperty('5.visible', false)
						setProperty('6.visible', false)
						setProperty('7.visible', false)
                        setProperty('8.visible', true)
                        setProperty('9.visible', false)
                        setProperty('10.visible', false)
					elseif ProductSelected == 10 then
                        setProperty('0.visible', false)
                        setProperty('1.visible', false)
						setProperty('2.visible', false)
                        setProperty('3.visible', false)
                        setProperty('4.visible', false)
                        setProperty('5.visible', false)
						setProperty('6.visible', false)
						setProperty('7.visible', false)
                        setProperty('8.visible', false)
                        setProperty('9.visible', true)
                        setProperty('10.visible', false)
					elseif ProductSelected == 11 then
                        setProperty('0.visible', false)
                        setProperty('1.visible', false)
						setProperty('2.visible', false)
                        setProperty('3.visible', false)
                        setProperty('4.visible', false)
                        setProperty('5.visible', false)
						setProperty('6.visible', false)
						setProperty('7.visible', false)
                        setProperty('8.visible', false)
                        setProperty('9.visible', false)
                        setProperty('10.visible', true)
  			end
			  playSound('select');
		  end
		if keyboardJustPressed('UP') or keyboardJustPressed('DOWN') then

			if TwoSelected >= TwoProductLimit and keyboardJustPressed('UP') then
				TwoSelected = 1
			elseif TwoSelected <= MinTwoProductLimit and keyboardJustPressed('DOWN') then
				TwoSelected = 11
			else
				if keyboardJustPressed('UP') then
				      TwoSelected = TwoSelected + 1
				end
				if keyboardJustPressed('DOWN') then
					TwoSelected = TwoSelected - 1
				end
			end
			if TwoSelected == 1 then
                        setProperty('0Two.visible', true)
                        setProperty('1Two.visible', false)
						setProperty('2Two.visible', false)
                        setProperty('3Two.visible', false)
						setProperty('4Two.visible', false)
                        setProperty('5Two.visible', false)
						setProperty('6Two.visible', false)
						setProperty('7Two.visible', false)
                        setProperty('8Two.visible', false)
						setProperty('9Two.visible', false)
                        setProperty('10Two.visible', false)
                  elseif TwoSelected == 2 then
                        setProperty('0Two.visible', false)
                        setProperty('1Two.visible', true)
						setProperty('2Two.visible', false)
                        setProperty('3Two.visible', false)
						setProperty('4Two.visible', false)
                        setProperty('5Two.visible', false)
						setProperty('6Two.visible', false)
						setProperty('7Two.visible', false)
                        setProperty('8Two.visible', false)
						setProperty('9Two.visible', false)
                        setProperty('10Two.visible', false)
					elseif TwoSelected == 3 then
                        setProperty('0Two.visible', false)
                        setProperty('1Two.visible', false)
						setProperty('2Two.visible', true)
                        setProperty('3Two.visible', false)
						setProperty('4Two.visible', false)
                        setProperty('5Two.visible', false)
						setProperty('6Two.visible', false)
						setProperty('7Two.visible', false)
                        setProperty('8Two.visible', false)
						setProperty('9Two.visible', false)
                        setProperty('10Two.visible', false)
					elseif TwoSelected == 4 then
                        setProperty('0Two.visible', false)
                        setProperty('1Two.visible', false)
						setProperty('2Two.visible', false)
                        setProperty('3Two.visible', true)
						setProperty('4Two.visible', false)
                        setProperty('5Two.visible', false)
						setProperty('6Two.visible', false)
						setProperty('7Two.visible', false)
                        setProperty('8Two.visible', false)
						setProperty('9Two.visible', false)
                        setProperty('10Two.visible', false)
					elseif TwoSelected == 5 then
                        setProperty('0Two.visible', false)
                        setProperty('1Two.visible', false)
						setProperty('2Two.visible', false)
                        setProperty('3Two.visible', false)
						setProperty('4Two.visible', true)
                        setProperty('5Two.visible', false)
					elseif TwoSelected == 6 then
                        setProperty('0Two.visible', false)
                        setProperty('1Two.visible', false)
						setProperty('2Two.visible', false)
                        setProperty('3Two.visible', false)
						setProperty('4Two.visible', false)
                        setProperty('5Two.visible', true)
						setProperty('6Two.visible', false)
						setProperty('7Two.visible', false)
                        setProperty('8Two.visible', false)
						setProperty('9Two.visible', false)
                        setProperty('10Two.visible', false)
					elseif TwoSelected == 7 then
                        setProperty('0Two.visible', false)
                        setProperty('1Two.visible', false)
						setProperty('2Two.visible', false)
                        setProperty('3Two.visible', false)
						setProperty('4Two.visible', false)
                        setProperty('5Two.visible', false)
						setProperty('6Two.visible', true)
						setProperty('7Two.visible', false)
                        setProperty('8Two.visible', false)
						setProperty('9Two.visible', false)
                        setProperty('10Two.visible', false)
					elseif TwoSelected == 8 then
                        setProperty('0Two.visible', false)
                        setProperty('1Two.visible', false)
						setProperty('2Two.visible', false)
                        setProperty('3Two.visible', false)
						setProperty('4Two.visible', false)
                        setProperty('5Two.visible', false)
						setProperty('6Two.visible', false)
						setProperty('7Two.visible', true)
                        setProperty('8Two.visible', false)
						setProperty('9Two.visible', false)
                        setProperty('10Two.visible', false)
					elseif TwoSelected == 9 then
                        setProperty('0Two.visible', false)
                        setProperty('1Two.visible', false)
						setProperty('2Two.visible', false)
                        setProperty('3Two.visible', false)
						setProperty('4Two.visible', false)
                        setProperty('5Two.visible', false)
						setProperty('6Two.visible', false)
						setProperty('7Two.visible', false)
                        setProperty('8Two.visible', true)
						setProperty('9Two.visible', false)
                        setProperty('10Two.visible', false)
					elseif TwoSelected == 10 then
                        setProperty('0Two.visible', false)
                        setProperty('1Two.visible', false)
						setProperty('2Two.visible', false)
                        setProperty('3Two.visible', false)
						setProperty('4Two.visible', false)
                        setProperty('5Two.visible', false)
						setProperty('6Two.visible', false)
						setProperty('7Two.visible', false)
                        setProperty('8Two.visible', false)
						setProperty('9Two.visible', true)
                        setProperty('10Two.visible', false)
					elseif TwoSelected == 11 then
                        setProperty('0Two.visible', false)
                        setProperty('1Two.visible', false)
						setProperty('2Two.visible', false)
                        setProperty('3Two.visible', false)
						setProperty('4Two.visible', false)
                        setProperty('5Two.visible', false)
						setProperty('6Two.visible', false)
						setProperty('7Two.visible', false)
                        setProperty('8Two.visible', false)
						setProperty('9Two.visible', false)
                        setProperty('10Two.visible', true)
  			end
			  playSound('select');
		  end
			  if ProductSelected == 1 and TwoSelected == 2 and keyboardJustPressed('SPACE') then
				loadSong('hurts');
		      elseif ProductSelected == 1 and TwoSelected == 3 and keyboardJustPressed('SPACE') then
				loadSong('Bopeebo');
			  elseif ProductSelected == 8 and TwoSelected == 3 and keyboardJustPressed('SPACE') then
				loadSong('Image-one');
			  elseif ProductSelected == 6 and TwoSelected == 8 and keyboardJustPressed('SPACE') then
				loadSong('Image-two');
			  elseif ProductSelected == 3 and TwoSelected == 2 and keyboardJustPressed('SPACE') then
				loadSong('Image-three');
			  elseif ProductSelected == 1 and TwoSelected == 1 and keyboardJustPressed('SPACE') then
				loadSong('Codes');
			  end

      end

end

function onTimerCompleted(tag, loops, loopsLeft)
	if keyJustPressed('pause') and songName == 'Sound Test' then
		exitMenu();
	end
end

function exitMenu()
	setDataFromSave('DataFolder', 'Money', MoneyAmount)
	exitSong(true);
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'WaitSelect' then
		canCodeOne = true
	end
end