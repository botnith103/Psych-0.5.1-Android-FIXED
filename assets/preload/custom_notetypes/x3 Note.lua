function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'x3 Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'x3NOTE_assets'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
		end
	end
end