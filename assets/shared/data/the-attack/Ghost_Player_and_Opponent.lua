
local Intensity = 100
local BlendMode = 'add' --Options: add,alpha,darken,difference,erase,hardlight,invert,layer,lighten,multiply,normal,overlay,screen,shader,subtract

function onCreatePost()

	BfHealthBarColor = RGBtoHex(getProperty('boyfriend.healthColorArray'))
	DadHealthBarColor = RGBtoHex(getProperty('dad.healthColorArray'))

	Colors ={ --choose a color here lol
		NoColor = {'FFFFFF','FFFFFF','FFFFFF','FFFFFF'},
		CMYK = {'00FFFF','FF00FF','FFFF00','000000'},
		Strums = {'C24B99','00FFFF','12FA05','F9393F'},
		StrumsPixel = {'E276FF','3DCAFF','71E300','FF884E'},
		BfHPBar = {BfHealthBarColor,BfHealthBarColor,BfHealthBarColor,BfHealthBarColor},
		DadHPBar = {DadHealthBarColor,DadHealthBarColor,DadHealthBarColor,DadHealthBarColor}
	}


	bfTag = 'GhostPlayer'
 	bfColor = Colors.NoColor

 	dadTag = 'GhostOpponent'
 	dadColor = Colors.NoColor

end

function goodNoteHit(id, direction, noteType, isSustainNote)
	local bfImage = getProperty('boyfriend.imageFile')
	local curFrame = getProperty('boyfriend.animation.frameName')

	if not isSustainNote then
		if direction == 0 then

			makeAnimatedLuaSprite(bfTag..'1', bfImage, getProperty('boyfriend.x'), getProperty('boyfriend.y'))
			addAnimationByPrefix(bfTag..'1', 'AnyPose', curFrame, 0, false)
			setObjectOrder(bfTag..'1', getObjectOrder('boyfriendGroup')-1)
			setProperty(bfTag..'1.offset.x', getProperty('boyfriend.offset.x'))
			setProperty(bfTag..'1.offset.y', getProperty('boyfriend.offset.y'))
			setProperty(bfTag..'1.color', getColorFromHex(bfColor[1]))
			setProperty(bfTag..'1.flipX', getProperty('boyfriend.flipX'))
			setProperty(bfTag..'1.scale.x', getProperty('boyfriend.scale.x'))
			setProperty(bfTag..'1.scale.y', getProperty('boyfriend.scale.y'))
			setProperty(bfTag..'1.antialiasing', getProperty('boyfriend.antialiasing'))
			setBlendMode(bfTag..'1', BlendMode)
			addLuaSprite(bfTag..'1')


			doTweenX('MovementTweenBf1', bfTag..'1', getProperty('boyfriend.x') - Intensity, 0.5, 'linear')
			doTweenAlpha('AlphaTweenBf1', bfTag..'1', 0, 0.5)

		elseif direction == 1 then

			makeAnimatedLuaSprite(bfTag..'2', bfImage, getProperty('boyfriend.x'), getProperty('boyfriend.y'))
			addAnimationByPrefix(bfTag..'2', 'AnyPose', curFrame, 0, false)
			setObjectOrder(bfTag..'2', getObjectOrder('boyfriendGroup')-1)
			setProperty(bfTag..'2.offset.x', getProperty('boyfriend.offset.x'))
			setProperty(bfTag..'2.offset.y', getProperty('boyfriend.offset.y'))
			setProperty(bfTag..'2.color', getColorFromHex(bfColor[2]))
			setProperty(bfTag..'2.flipX', getProperty('boyfriend.flipX'))
			setProperty(bfTag..'2.scale.x', getProperty('boyfriend.scale.x'))
			setProperty(bfTag..'2.scale.y', getProperty('boyfriend.scale.y'))
			setProperty(bfTag..'2.antialiasing', getProperty('boyfriend.antialiasing'))
			setBlendMode(bfTag..'2', BlendMode)
			addLuaSprite(bfTag..'2')

			doTweenY('MovementTweenBf2', bfTag..'2', getProperty('boyfriend.y') + Intensity, 0.5, 'linear')
			doTweenAlpha('AlphaTweenBf2', bfTag..'2', 0, 0.5)

		elseif direction == 2 then

			makeAnimatedLuaSprite(bfTag..'3', bfImage, getProperty('boyfriend.x'), getProperty('boyfriend.y'))
			addAnimationByPrefix(bfTag..'3', 'AnyPose', curFrame, 0, false)
			setObjectOrder(bfTag..'3', getObjectOrder('boyfriendGroup')-1)
			setProperty(bfTag..'3.offset.x', getProperty('boyfriend.offset.x'))
			setProperty(bfTag..'3.offset.y', getProperty('boyfriend.offset.y'))
			setProperty(bfTag..'3.color', getColorFromHex(bfColor[3]))
			setProperty(bfTag..'3.flipX', getProperty('boyfriend.flipX'))
			setProperty(bfTag..'3.scale.x', getProperty('boyfriend.scale.x'))
			setProperty(bfTag..'3.scale.y', getProperty('boyfriend.scale.y'))
			setProperty(bfTag..'3.antialiasing', getProperty('boyfriend.antialiasing'))
			setBlendMode(bfTag..'3', BlendMode)
			addLuaSprite(bfTag..'3')

			doTweenY('MovementTweenBf3', bfTag..'3', getProperty('boyfriend.y') - Intensity, 0.5, 'linear')
			doTweenAlpha('AlphaTweenBf3', bfTag..'3', 0, 0.5)

		elseif direction == 3 then

			makeAnimatedLuaSprite(bfTag..'4', bfImage, getProperty('boyfriend.x'), getProperty('boyfriend.y'))
			addAnimationByPrefix(bfTag..'4', 'AnyPose', curFrame, 0, false)
			setObjectOrder(bfTag..'4', getObjectOrder('boyfriendGroup')-1)
			setProperty(bfTag..'4.offset.x', getProperty('boyfriend.offset.x'))
			setProperty(bfTag..'4.offset.y', getProperty('boyfriend.offset.y'))
			setProperty(bfTag..'4.color', getColorFromHex(bfColor[4]))
			setProperty(bfTag..'4.flipX', getProperty('boyfriend.flipX'))
			setProperty(bfTag..'4.scale.x', getProperty('boyfriend.scale.x'))
			setProperty(bfTag..'4.scale.y', getProperty('boyfriend.scale.y'))
			setProperty(bfTag..'4.antialiasing', getProperty('boyfriend.antialiasing'))
			setBlendMode(bfTag..'4', BlendMode)
			addLuaSprite(bfTag..'4', true)

			doTweenX('MovementTweenBf4', bfTag..'4', getProperty('boyfriend.x') + Intensity, 0.5, 'linear')
			doTweenAlpha('AlphaTweenBf4', bfTag..'4', 0, 0.5)

		end
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	local dadImage = getProperty('dad.imageFile')
	local curFrame = getProperty('dad.animation.frameName')

	if not isSustainNote then
		if direction == 0 then

			makeAnimatedLuaSprite(dadTag..'1', dadImage, getProperty('dad.x'), getProperty('dad.y'))
			addAnimationByPrefix(dadTag..'1', 'AnyPose', curFrame, 0, false)
			setObjectOrder(dadTag..'1', getObjectOrder('dadGroup')-1)
			setProperty(dadTag..'1.offset.x', getProperty('dad.offset.x'))
			setProperty(dadTag..'1.offset.y', getProperty('dad.offset.y'))
			setProperty(dadTag..'1.color', getColorFromHex(dadColor[1]))
			setProperty(dadTag..'1.flipX', getProperty('dad.flipX'))
			setProperty(dadTag..'1.scale.x', getProperty('dad.scale.x'))
			setProperty(dadTag..'1.scale.y', getProperty('dad.scale.y'))
			setProperty(dadTag..'1.antialiasing', getProperty('dad.antialiasing'))
			setBlendMode(dadTag..'1', BlendMode)
			addLuaSprite(dadTag..'1')


			doTweenX('MovementTweenDad1', dadTag..'1', getProperty('dad.x') - Intensity, 0.5, 'linear')
			doTweenAlpha('AlphaTweenDad1', dadTag..'1', 0, 0.5)

		elseif direction == 1 then

			makeAnimatedLuaSprite(dadTag..'2', dadImage, getProperty('dad.x'), getProperty('dad.y'))
			addAnimationByPrefix(dadTag..'2', 'AnyPose', curFrame, 0, false)
			setObjectOrder(dadTag..'2', getObjectOrder('dadGroup')-1)
			setProperty(dadTag..'2.offset.x', getProperty('dad.offset.x'))
			setProperty(dadTag..'2.offset.y', getProperty('dad.offset.y'))
			setProperty(dadTag..'2.color', getColorFromHex(dadColor[2]))
			setProperty(dadTag..'2.flipX', getProperty('dad.flipX'))
			setProperty(dadTag..'2.scale.x', getProperty('dad.scale.x'))
			setProperty(dadTag..'2.scale.y', getProperty('dad.scale.y'))
			setProperty(dadTag..'2.antialiasing', getProperty('dad.antialiasing'))
			setBlendMode(dadTag..'2', BlendMode)
			addLuaSprite(dadTag..'2')

			doTweenY('MovementTweenDad2', dadTag..'2', getProperty('dad.y') + Intensity, 0.5, 'linear')
			doTweenAlpha('AlphaTweenDad2', dadTag..'2', 0, 0.5)

		elseif direction == 2 then

			makeAnimatedLuaSprite(dadTag..'3', dadImage, getProperty('dad.x'), getProperty('dad.y'))
			addAnimationByPrefix(dadTag..'3', 'AnyPose', curFrame, 0, false)
			setObjectOrder(dadTag..'3', getObjectOrder('dadGroup')-1)
			setProperty(dadTag..'3.offset.x', getProperty('dad.offset.x'))
			setProperty(dadTag..'3.offset.y', getProperty('dad.offset.y'))
			setProperty(dadTag..'3.color', getColorFromHex(dadColor[3]))
			setProperty(dadTag..'3.flipX', getProperty('dad.flipX'))
			setProperty(dadTag..'3.scale.x', getProperty('dad.scale.x'))
			setProperty(dadTag..'3.scale.y', getProperty('dad.scale.y'))
			setProperty(dadTag..'3.antialiasing', getProperty('dad.antialiasing'))
			setBlendMode(dadTag..'3', BlendMode)
			addLuaSprite(dadTag..'3')

			doTweenY('MovementTweenDad3', dadTag..'3', getProperty('dad.y') - Intensity, 0.5, 'linear')
			doTweenAlpha('AlphaTweenDad3', dadTag..'3', 0, 0.5)

		elseif direction == 3 then

			makeAnimatedLuaSprite(dadTag..'4', dadImage, getProperty('dad.x'), getProperty('dad.y'))
			addAnimationByPrefix(dadTag..'4', 'AnyPose', curFrame, 0, false)
			setObjectOrder(dadTag..'4', getObjectOrder('dadGroup')-1)
			setProperty(dadTag..'4.offset.x', getProperty('dad.offset.x'))
			setProperty(dadTag..'4.offset.y', getProperty('dad.offset.y'))
			setProperty(dadTag..'4.color', getColorFromHex(dadColor[4]))
			setProperty(dadTag..'4.flipX', getProperty('dad.flipX'))
			setProperty(dadTag..'4.scale.x', getProperty('dad.scale.x'))
			setProperty(dadTag..'4.scale.y', getProperty('dad.scale.y'))
			setProperty(dadTag..'4.antialiasing', getProperty('dad.antialiasing'))
			setBlendMode(dadTag..'4', BlendMode)
			addLuaSprite(dadTag..'4')

			doTweenX('MovementTweenDad4', dadTag..'4', getProperty('dad.x') + Intensity, 0.5, 'linear')
			doTweenAlpha('AlphaTweenDad4', dadTag..'4', 0, 0.5)

		end
	end
end

function onTweenCompleted(tag)
	if tag == 'AlphaTweenBf1' then
		setProperty(bfTag..'1.visible', false)
	elseif tag == 'AlphaTweenBf2' then
		setProperty(bfTag..'2.visible', false)
	elseif tag == 'AlphaTweenBf3' then
		setProperty(bfTag..'3.visible', false)
	elseif tag == 'AlphaTweenBf4' then
		setProperty(bfTag..'4.visible', false)
	end

	if tag == 'AlphaTweenDad1' then
		setProperty(dadTag..'1.visible', false)
	elseif tag == 'AlphaTweenDad2' then
		setProperty(dadTag..'2.visible', false)
	elseif tag == 'AlphaTweenDad3' then
		setProperty(dadTag..'3.visible', false)
	elseif tag == 'AlphaTweenDad4' then
		setProperty(dadTag..'4.visible', false)
	end
end

function RGBtoHex(RGB) -- behold, the most mid RGB to Hex converter to exist LMAO

	Decimal1 = math.floor(RGB[1]/16)
	Decimal2 = ((RGB[1]/16)%1)*16

	Decimal3 = math.floor(RGB[2]/16)
	Decimal4 = ((RGB[2]/16)%1)*16

	Decimal5 = math.floor(RGB[3]/16)
	Decimal6 = ((RGB[3]/16)%1)*16

	LetterValues = 'ABCDEF'

-- testing "string.sub" shit lol
	if Decimal1 == 10 then
		Decimal1 = string.sub(LetterValues, 1,1)
	elseif Decimal1 == 11 then
		Decimal1 = string.sub(LetterValues, 2,2)
	elseif Decimal1 == 12 then
		Decimal1 = string.sub(LetterValues, 3,3)
	elseif Decimal1 == 13 then
		Decimal1 = string.sub(LetterValues, 4,4)
	elseif Decimal1 == 14 then
		Decimal1 = string.sub(LetterValues, 5,5)
	elseif Decimal1 == 15 then
		Decimal1 = string.sub(LetterValues, 6,6)
	end
	if Decimal2 == 10 then
		Decimal2 = string.sub(LetterValues, 1,1)
	elseif Decimal2 == 11 then
		Decimal2 = string.sub(LetterValues, 2,2)
	elseif Decimal2 == 12 then
		Decimal2 = string.sub(LetterValues, 3,3)
	elseif Decimal2 == 13 then
		Decimal2 = string.sub(LetterValues, 4,4)
	elseif Decimal2 == 14 then
		Decimal2 = string.sub(LetterValues, 5,5)
	elseif Decimal2 == 15 then
		Decimal2 = string.sub(LetterValues, 6,6)
	end
	if Decimal3 == 10 then
		Decimal3 = string.sub(LetterValues, 1,1)
	elseif Decimal3 == 11 then
		Decimal3 = string.sub(LetterValues, 2,2)
	elseif Decimal3 == 12 then
		Decimal3 = string.sub(LetterValues, 3,3)
	elseif Decimal3 == 13 then
		Decimal3 = string.sub(LetterValues, 4,4)
	elseif Decimal3 == 14 then
		Decimal3 = string.sub(LetterValues, 5,5)
	elseif Decimal3 == 15 then
		Decimal3 = string.sub(LetterValues, 6,6)
	end
	if Decimal4 == 10 then
		Decimal4 = string.sub(LetterValues, 1,1)
	elseif Decimal4 == 11 then
		Decimal4 = string.sub(LetterValues, 2,2)
	elseif Decimal4 == 12 then
		Decimal4 = string.sub(LetterValues, 3,3)
	elseif Decimal4 == 13 then
		Decimal4 = string.sub(LetterValues, 4,4)
	elseif Decimal4 == 14 then
		Decimal4 = string.sub(LetterValues, 5,5)
	elseif Decimal4 == 15 then
		Decimal4 = string.sub(LetterValues, 6,6)
	end
	if Decimal5 == 10 then
		Decimal5 = string.sub(LetterValues, 1,1)
	elseif Decimal5 == 11 then
		Decimal5 = string.sub(LetterValues, 2,2)
	elseif Decimal5 == 12 then
		Decimal5 = string.sub(LetterValues, 3,3)
	elseif Decimal5 == 13 then
		Decimal5 = string.sub(LetterValues, 4,4)
	elseif Decimal5 == 14 then
		Decimal5 = string.sub(LetterValues, 5,5)
	elseif Decimal5 == 15 then
		Decimal5 = string.sub(LetterValues, 6,6)
	end
	if Decimal6 == 10 then
		Decimal6 = string.sub(LetterValues, 1,1)
	elseif Decimal6 == 11 then
		Decimal6 = string.sub(LetterValues, 2,2)
	elseif Decimal6 == 12 then
		Decimal6 = string.sub(LetterValues, 3,3)
	elseif Decimal6 == 13 then
		Decimal6 = string.sub(LetterValues, 4,4)
	elseif Decimal6 == 14 then
		Decimal6 = string.sub(LetterValues, 5,5)
	elseif Decimal6 == 15 then
		Decimal6 = string.sub(LetterValues, 6,6)
	end
		Hex1 = Decimal1
		Hex2 = Decimal2
		Hex3 = Decimal3
		Hex4 = Decimal4
		Hex5 = Decimal5
		Hex6 = Decimal6
		local HexCode = table.concat{Hex1,Hex2,Hex3,Hex4,Hex5,Hex6}
	return HexCode
end