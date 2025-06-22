function onEvent(name, value1, value2)
	if name == 'badapplelol' and value1 == 'a' then
		makeLuaSprite('whitebg', 'whitebg', -2890, -1110)
   scaleObject('whitebg', 5, 5)
		addLuaSprite('whitebg', false)
		setProperty('boyfriend.color', '000000')
		setProperty('dad.color', '000000')
		setProperty('gf.color', '000000')
   setProperty('cortinas.visible', false)
	end
	if name == 'badapplelol' and value1 == 'b' then
		removeLuaSprite('whitebg')
		setProperty('boyfriend.color', getColorFromHex('FFFFFF'))
		setProperty('dad.color', getColorFromHex('FFFFFF'))
		setProperty('gf.color', 
getColorFromHex('FFFFFF'))
setProperty('cortinas.visible', true)
	end
end