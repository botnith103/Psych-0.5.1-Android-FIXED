function onCreate()
	-- background shit
	makeLuaSprite('bloodbg', 'bloodmoonBG', -500, -500);
	setScrollFactor('bloodbg', 0.4, 0.8);

	makeLuaSprite('plataformBG', 'plataform', -500,-388);
	setScrollFactor('plataformBG', 1.0, 1.0);
	scaleObject('plataformBG', 5.0, 5.0);

	makeLuaSprite('dark', 'darkBloodBG', -500,-500);
	setScrollFactor('dark', 0.9, 0.9);
	scaleObject('dark', 5.0, 5.0);

	addLuaSprite('bloodbg', false);
	addLuaSprite('plataformBG', false);
	addLuaSprite('dark', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end