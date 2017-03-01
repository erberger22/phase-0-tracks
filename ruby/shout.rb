module Shout
	def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yell_happily(words)
  	words + " :)" + " <3" + " :)"
  end
end

p Shout.yell_angrily("Tacos")
p Shout.yell_happily("Tacos")
