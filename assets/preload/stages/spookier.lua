function onCreate()
	-- background shit
	makeLuaSprite('background', 'background', -200, -150);
	setLuaSpriteScrollFactor('background', 0.9, 0.9);
	addLuaSprite('background', false);

	close(true)
end