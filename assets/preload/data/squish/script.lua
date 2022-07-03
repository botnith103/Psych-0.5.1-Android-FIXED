function onCreate()
	if dadName == 'monsterwuggy' then
		makeAnimatedLuaSprite('animatedicon', 'icons/icon-monsterwuggy', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon', 'normal', 'normal', 24, false)
		addAnimationByPrefix('animatedicon', 'losing', 'losing', 24, false)
		addAnimationByPrefix('animatedicon', 'winning', 'winning', 24, false)
		setScrollFactor('animatedicon', 0, 0)
		setObjectCamera('animatedicon', 'other')
		addLuaSprite('animatedicon', true)
		setObjectOrder('animatedicon', 99)
		objectPlayAnimation('animatedicon', 'normal', false)
	end
end

function onUpdate(elapsed)
	if dadName == 'monsterwuggy' then
		setProperty('iconP2.alpha', 0)
		if getProperty('health') < 1.6 then
            if getProperty('health') > 0.4 then
				objectPlayAnimation('animatedicon', 'normal', false)
			end
		end
		if getProperty('health') >= 1.6 then
			objectPlayAnimation('animatedicon', 'losing', false)
		end
        if getProperty('health') <= 0.4 then
			objectPlayAnimation('animatedicon', 'winning', false)
		end
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicon.x', getProperty('iconP2.x'))
	setProperty('animatedicon.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon.y', getProperty('iconP2.y') + 15)
	setProperty('animatedicon.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon.scale.y', getProperty('iconP2.scale.y'))
	--[[
	for i=0,4,1 do
		setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets_3D')
		--setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D')
	end
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D'); --Change texture
		end
	end
	]]
end