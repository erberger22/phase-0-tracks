module Shout
	#def self.yell_angrily(words)
  #  words + "!!!" + " :("
  #end
  #def self.yell_happily(words)
  #	 words + " :)" + " <3" + " :)"
  #end
  def outdoor_voice(words)
  	puts words.upcase + "!!!"
  end
  def indoor_voice(words)
  	puts words.downcase + "..."
  end
end

class Umpire
	include Shout
end

class Lifeguard
	include Shout
end

home_ump = Umpire.new
home_ump.outdoor_voice("strike three")
home_ump.indoor_voice("strike three")

lifeguard = Lifeguard.new
lifeguard.outdoor_voice("dont run")
lifeguard.indoor_voice("dont run")

