function onCreate()
	-- background shit
	makeAnimatedLuaSprite('frontBG','strikerBGfront',-3050,-770)addAnimationByPrefix('frontBG','dance','strikerBGfront',24,true)
      objectPlayAnimation('frontBG','dance',false)
      setScrollFactor('frontBG', 0.9, 0.9);
      scaleObject('frontBG', 5.0, 5.0);

	makeAnimatedLuaSprite('backBG','strikerBGback',-3050,-770)addAnimationByPrefix('backBG','dance','strikerBGback',24,true)
      objectPlayAnimation('backBG','dance',false)
      setScrollFactor('backBG', 0.9, 0.9);
      scaleObject('backBG', 5.0, 5.0);

      makeAnimatedLuaSprite('FASTfrontBG','FASTstrikerBGfront',-3050,-770)addAnimationByPrefix('FASTfrontBG','dance','FASTstrikerBGfront',24,true)
      objectPlayAnimation('FASTfrontBG','dance',false)
      setScrollFactor('FASTfrontBG', 0.9, 0.9);
      scaleObject('FASTfrontBG', 5.0, 5.0);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeLuaSprite('border', 'strikerborder', -600,-770);
		setScrollFactor('border', 0.9, 0.9);
		scaleObject('border', 5.0, 5.0);

      	makeAnimatedLuaSprite('rock','rocks',-3050,-770)addAnimationByPrefix('rock','dance','rocks',24,true)
      	objectPlayAnimation('rock','dance',false)
      	setScrollFactor('rock', 0.9, 0.9);
		scaleObject('stagefront', 1.4, 1.4);

      	makeAnimatedLuaSprite('publicships','public',-200,-570)addAnimationByPrefix('publicships','dance','public',24,true)
      	objectPlayAnimation('publicships','dance',false)
      	setScrollFactor('publicships', 0.9, 0.9);
      	scaleObject('publicships', 5.0, 5.0);

      	makeAnimatedLuaSprite('FASTbackBG','FASTstrikerBGback',-3050,-770)addAnimationByPrefix('FASTbackBG','dance','FASTstrikerBGback',24,true)
      	objectPlayAnimation('FASTbackBG','dance',false)
      	setScrollFactor('FASTbackBG', 0.9, 0.9);
      	scaleObject('FASTbackBG', 5.0, 5.0);

	end

	addLuaSprite('FASTbackBG', false);
	addLuaSprite('FASTfrontBG', false);
	addLuaSprite('backBG', false);
	addLuaSprite('frontBG', false);
	addLuaSprite('publicships', false);
	addLuaSprite('rock', true);
	addLuaSprite('border', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end