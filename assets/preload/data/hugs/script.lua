local poseindex = {'left','down','up','right'};
--borren los mods de huggy wuggy nomamen
function onCreate()
  makeAnimatedLuaSprite('w-left', 'characters/normal/left', 60, 10);
  addAnimationByPrefix('w-left', 'left', 'HuggyWuggy left', 24, false);
  objectPlayAnimation('w-left', 'left');
  scaleObject('w-left', 0.5, 0.5);
  addLuaSprite('w-left', true); 
  setProperty('w-left.visible', false);

  makeAnimatedLuaSprite('w-right', 'characters/normal/right', 39, 0);
  addAnimationByPrefix('w-right', 'right', 'HuggyWuggy right', 24, false);
  objectPlayAnimation('w-right', 'right');
  scaleObject('w-right', 0.5, 0.5);
  addLuaSprite('w-right', true); 
  setProperty('w-right.visible', false);

  makeAnimatedLuaSprite('w-up', 'characters/normal/up', 50, 4);
  addAnimationByPrefix('w-up', 'up', 'HuggyWuggy up', 24, false);
  objectPlayAnimation('w-up', 'up');
  scaleObject('w-up', 0.5, 0.5);
  addLuaSprite('w-up', true); 
  setProperty('w-up.visible', false);

  makeAnimatedLuaSprite('w-down', 'characters/normal/down', 50, -10);
  addAnimationByPrefix('w-down', 'down', 'HuggyWuggy down', 24, false);
  objectPlayAnimation('w-down', 'down');
  scaleObject('w-down', 0.5, 0.5);
  addLuaSprite('w-down', true); 
  setProperty('w-down.visible', false);

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
