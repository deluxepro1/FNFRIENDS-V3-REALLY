--script de MR SEXO/MRFACHA https://youtube.com/@MRFACHA7311
function onSongStart()
     runTimer('shit', 0.1, 1)
end
function onCreate()
makeLuaSprite('E', 'sus1', 0, 0);
addLuaSprite('E', true);
setObjectCamera('E', 'other', true);
setProperty('E.alpha',0.00)

makeLuaSprite('E2', 'sus2', 0, 0);
addLuaSprite('E2', true);
setObjectCamera('E2', 'other', true);
setProperty('E2.alpha',0.00)

makeLuaSprite('E3', 'sus3', 0, 0);
addLuaSprite('E3', true);
setObjectCamera('E3', 'other', true);
setProperty('E3.alpha',0.00)

makeLuaSprite('E4', 'sus4', 0, 0);
addLuaSprite('E4', true);
setObjectCamera('E4', 'other', true);
setProperty('E4.alpha',0.00)

makeLuaSprite('E5', 'sus5', 0, 0);
addLuaSprite('E5', true);
setObjectCamera('E5', 'other', true);
setProperty('E5.alpha',0.00)

makeLuaSprite('E6', 'sus6', 0, 0);
addLuaSprite('E6', true);
setObjectCamera('E6', 'other', true);
setProperty('E6.alpha',0.00)

makeLuaSprite('E7', 'sus7', 0, 0);
addLuaSprite('E7', true);
setObjectCamera('E7', 'other', true);
setProperty('E7.alpha',0.00)

makeLuaSprite('E8', 'sus8', 0, 0);
addLuaSprite('E8', true);
setObjectCamera('E8', 'other', true);
setProperty('E8.alpha',0.00)

makeLuaSprite('E9', 'sus9', 0, 0);
addLuaSprite('E9', true);
setObjectCamera('E9', 'other', true);
setProperty('E9.alpha',0.00)

makeLuaSprite('E10', 'sus10', 0, 0);
addLuaSprite('E10', true);
setObjectCamera('E10', 'other', true);
setProperty('E10.alpha',0.00)
end
function onTimerCompleted(tag, loops, loopsLeft)

       if tag == 'shit' then
          shitPost = math.random(1,10)
          
         if shitPost == 1 then

            playSound('BOOM',200)
           setProperty('E.alpha',0)
           doTweenAlpha('E','E',0,0,'linear')
runTimer('shit', 10, 10)

         elseif shitPost == 2 then

            playSound('BOOM',200)
           setProperty('E2.alpha',1)
           doTweenAlpha('E2','E2',0,1,'linear')
runTimer('shit', 10, 10)

         elseif shitPost == 3 then

            playSound('BOOM',200)
           setProperty('E3.alpha',1)
           doTweenAlpha('E3','E3',0,1,'linear')
runTimer('shit', 10, 10)

         elseif shitPost == 4 then

            playSound('BOOM',200)
           setProperty('E4.alpha',1)
           doTweenAlpha('E4','E4',0,1,'linear')
runTimer('shit', 10, 10)

         elseif shitPost == 5 then

            playSound('BOOM',200)
           setProperty('E5.alpha',1)
           doTweenAlpha('E5','E5',0,1,'linear')
runTimer('shit', 10, 10)

         elseif shitPost == 6 then

            playSound('BOOM',200)
           setProperty('E6.alpha',1)
           doTweenAlpha('E6','E6',0,1,'linear')
runTimer('shit', 10, 10)

         elseif shitPost == 7 then

            playSound('BOOM',200)
           setProperty('E7.alpha',1)
           doTweenAlpha('E7','E7',0,1,'linear')
runTimer('shit', 10, 10)

         elseif shitPost == 8 then

            playSound('BOOM',200)
           setProperty('E8.alpha',1)
           doTweenAlpha('E8','E8',0,1,'linear')
runTimer('shit', 10, 10)

         elseif shitPost == 9 then

            playSound('BOOM',200)
           setProperty('E9.alpha',1)
           doTweenAlpha('E9','E9',0,1,'linear')
runTimer('shit', 10, 10)

         elseif shitPost == 10 then

            playSound('BOOM',200)
           setProperty('E10.alpha',1)
           doTweenAlpha('E10','E10',0,1,'linear')
runTimer('shit', 10, 10)

       end
    end
end