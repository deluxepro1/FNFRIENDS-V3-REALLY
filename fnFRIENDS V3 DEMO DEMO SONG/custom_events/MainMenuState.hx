switch (FlxG.random.int(1, '1')) //You can change it with any number if there are more
		{
		case 1:
			char = new FlxSprite(X, Y).loadGraphic(Paths.image('mainmenu/gfDanceTitle'));//Thanks to EIT for the tutorial
			char.frames = Paths.getSparrowAtlas('mainmenu/gfDanceTitle');
			char.animation.addByPrefix('gfDanceTitle', 'animation on xml', framerate, true); //the bool value's for deciding if it loops or not
			char.animation.play('gfDanceTitle');
			char.scrollFactor.set();
			char.flipX = false; //You should have already animated it in the right position in Animate
			char.antialiasing =ClientPrefs.globalAntialiasing;
			FlxG.sound.play(Paths.sound('sound'), 2); //optional
			add(char);
		}
