function onCreate()
-- background shit

makeLuaSprite('blanco', 'stages/sus/blanco', -2890, -1110)
addLuaSprite('blanco', false)
scaleObject('blanco', 2.9, 3)
setScrollFactor('blanco', 0.8, 1)

makeLuaSprite('cielo', 'stages/sus/cielo', -2890, -1110)
addLuaSprite('cielo', false)
scaleObject('cielo', 2.9, 3)
setScrollFactor('cielo', 0.8, 1)

makeLuaSprite('suelo', 'stages/sus/suelo', -2770, -830)
addLuaSprite('suelo', false)
scaleObject('suelo', 3, 2.6)
setScrollFactor('suelo', 1, 1)

makeLuaSprite('nube', 'stages/sus/nube', 1000, 350)
scaleObject('nube', 1.4, 1.1)
setScrollFactor('nube', 1, 1)

makeLuaSprite('nube2', 'stages/sus/nube', -810, 710)
scaleObject('nube2', 1, 1)
setScrollFactor('nube2', 1, 1)

makeLuaSprite('sol', 'stages/sus/sol', 510, 170)
scaleObject('sol', 1, 1)
setScrollFactor('sol', 1, 1)

addLuaSprite('sol', false)
addLuaSprite('cielo', false)
addLuaSprite('suelo', false)
addLuaSprite('nube', false)
addLuaSprite('nube2', false)

close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end