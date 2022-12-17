function onCreate()
	-- background shit
	makeLuaSprite('back', 'backBG', -470,-800);
	setScrollFactor('back', 0.9, 0.1);
	scaleObject('back', 5.0, 5.0);

      makeAnimatedLuaSprite('grass','grassBG',-470,-900)addAnimationByPrefix('grass','dance','grassBG',24,true)
      objectPlayAnimation('grass','dance',false)
      setScrollFactor('grass', 0.9, 0.9);
      scaleObject('grass', 5.0, 5.0);

      makeAnimatedLuaSprite('scenario','scenarioBG',-390,-100)addAnimationByPrefix('scenario','dance','scenarioBG',24,true)
      objectPlayAnimation('scenario','dance',false)
      setScrollFactor('scenario', 1.0, 1.0);
      scaleObject('scenario', 5.0, 5.0);

	makeLuaSprite('backgdfnf', 'backGDFNFBG', -560,-800);
	setScrollFactor('backgdfnf', 1.0, 1.0);
	scaleObject('backgdfnf', 5.0, 5.0);

	makeLuaSprite('GDback', 'backGDBG', -470,-995);
	setScrollFactor('GDback', 0.9, 0.9);
	scaleObject('GDback', 5.0, 5.0);

	makeLuaSprite('dark', 'DarkBG', -500,-950);
	setScrollFactor('dark', 0.9, 0.9);
	scaleObject('dark', 5.0, 5.0);

	makeLuaSprite('moredark', 'MoreDarkBG', -500,-900);
	setScrollFactor('moredark', 0.9, 0.9);
	scaleObject('moredark', 5.0, 5.0);

		makeLuaSprite('REDbackgdfnf', 'REDbackGDFNFBG', -470,-1100);
		setScrollFactor('backgdfnf', 0.4, 0.4);
		scaleObject('REDbackgdfnf', 5.0, 5.0);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeAnimatedLuaSprite('robot','ultraviolenceRobot',1070,-900)addAnimationByPrefix('robot','dance','ultraviolenceRobot',24,true)
      	objectPlayAnimation('robot','dance',false)
      	setScrollFactor('robot', 0.9, 0.9);
      	scaleObject('robot', 5.0, 5.0);

      	makeAnimatedLuaSprite('publicgeo','geometricalpublic',-470,-945)addAnimationByPrefix('publicgeo','dance','public',24,true)
      	objectPlayAnimation('publicgeo','dance',false)
      	setScrollFactor('publicgeo', 0.9, 0.9);
      	scaleObject('publicgeo', 5.0, 5.0);

      end

	addLuaSprite('REDbackgdfnf', false);
	addLuaSprite('backgdfnf', false);
	addLuaSprite('back', false);
	addLuaSprite('robot', false);
	addLuaSprite('grass', false);
	addLuaSprite('publicgeo', false);
	addLuaSprite('scenario', false);
	addLuaSprite('GDback', false);
      addLuaSprite('dark', false);
      addLuaSprite('moredark', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end