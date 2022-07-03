local poseindex = {'left','down','up','right'};
--borren los mods de huggy wuggy nomamen

function onCreate()
  makeAnimatedLuaSprite('w-left', 'characters/loco/left', 60, 10);
  addAnimationByPrefix('w-left', 'left', 'HuggyWuggy left', 24, false);
  objectPlayAnimation('w-left', 'left');
  scaleObject('w-left', 0.5, 0.5);
  addLuaSprite('w-left', true); 
  setProperty('w-left.visible', false);

  makeAnimatedLuaSprite('w-right', 'characters/loco/right', 39, 0);
  addAnimationByPrefix('w-right', 'right', 'HuggyWuggy right', 24, false);
  objectPlayAnimation('w-right', 'right');
  scaleObject('w-right', 0.5, 0.5);
  addLuaSprite('w-right', true); 
  setProperty('w-right.visible', false);

  makeAnimatedLuaSprite('w-up', 'characters/loco/up', 50, 4);
  addAnimationByPrefix('w-up', 'up', 'HuggyWuggy up', 24, false);
  objectPlayAnimation('w-up', 'up');
  scaleObject('w-up', 0.5, 0.5);
  addLuaSprite('w-up', true); 
  setProperty('w-up.visible', false);

  makeAnimatedLuaSprite('w-down', 'characters/loco/down', 50, -10);
  addAnimationByPrefix('w-down', 'down', 'HuggyWuggy down', 24, false);
  objectPlayAnimation('w-down', 'down');
  scaleObject('w-down', 0.5, 0.5);
  addLuaSprite('w-down', true); 
  setProperty('w-down.visible', false);
  
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

function opponentNoteHit(id, direction, noteType, isSustainNote)
   setProperty('dad.visible', false);
   runTimer('dadya', stepCrochet*4/1000);
   setProperty('w-right.visible', false);
   setProperty('w-left.visible', false);
   setProperty('w-up.visible', false)
   setProperty('w-down.visible', false)
   setProperty('w-'..poseindex[direction%4+1]..'.visible', true);
   objectPlayAnimation('w-'..poseindex[direction%4+1], poseindex[direction%4+1], true);
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'dadya' then
       setProperty('dad.visible', true);
       setProperty('w-right.visible', false);
       setProperty('w-left.visible', false);
       setProperty('w-up.visible', false)
       setProperty('w-down.visible', false)
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