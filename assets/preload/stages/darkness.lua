function onCreate()
	-- background shit
      makeAnimatedLuaSprite('cavefnf','CaveBG',-700,-1100)addAnimationByPrefix('cavefnf','dance','CaveBG',24,true)
      objectPlayAnimation('cavefnf','dance',false)
      setScrollFactor('cavefnf', 1.0, 1.0);
      scaleObject('cavefnf', 5.0, 5.0);

	makeLuaSprite('oscuro', 'DarkBG', -800,-1100);
	setScrollFactor('oscuro', 0.9, 0.9);
	scaleObject('oscuro', 5.0, 5.0);

      	makeAnimatedLuaSprite('things','caveThings',-470,-1100)addAnimationByPrefix('things','dance','caveThings',24,true)
      	objectPlayAnimation('things','dance',false)
      	setScrollFactor('things', 1.0, 1.0);
      	scaleObject('things', 5.0, 5.0);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeLuaSprite('back', 'bgGDback', -800,-1100);
		setScrollFactor('back', 0.9, 0.9);
		scaleObject('back', 5.0, 5.0);

		makeLuaSprite('calacaxd', 'skull', -260,130);
		setScrollFactor('calacaxd', 0.8, 1.0);
		scaleObject('calacaxd', 5.0, 5.0);

      	makeAnimatedLuaSprite('margen','MargenGD',-800,-1100)addAnimationByPrefix('margen','dance','MargenGD',24,true)
      	objectPlayAnimation('margen','dance',false)
      	setScrollFactor('margen', 1.0, 1.0);
      	scaleObject('margen', 5.0, 5.0);

	end

	addLuaSprite('back', false);
	addLuaSprite('things', false);
	addLuaSprite('calacaxd', false);
	addLuaSprite('margen', false);
	addLuaSprite('cavefnf', false);
	addLuaSprite('oscuro', true);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end