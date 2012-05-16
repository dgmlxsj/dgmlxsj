
include Win32

def get_voice(name)
	v=SpVoice.new
	(1..10).each do |x|
		voice=v.GetVoices().Item(x)
		description=voice.GetDescription
		description.encode!("gbk","utf-8")
		if description.include? name
			return voice
		end
	end
end

def read(text)
	_SVSFlagsAsync=1
	_SVSFPurgeBeforeSpeak=2
	@v||=SpVoice.new
	#@v.Speak("",_SVSFPurgeBeforeSpeak)
	
	if $language=="chinese"
		@voice||=get_voice("Hui")
	else
		@voice||=get_voice("Amy")
	end
	
	@v.Voice=@voice
	@v.Speak(text,_SVSFlagsAsync+_SVSFPurgeBeforeSpeak)	
end

