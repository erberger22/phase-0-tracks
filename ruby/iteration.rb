=begin
def farwell
	puts "Bye-bye"
	yield ("alligator")
	puts "In a while, crocodile"
end

farwell { |phrase| puts "see you later, #{phrase}" }
=end
birds = ["ostrich", "emuu", "penguin", "kiwi"]

bears = {"grizzley" => "scary", "polar" => "scary", "the pooh" => "not scary"}

p birds
birds.each do |bird|
	puts "I dont think that #{bird} flies"
end
p birds

birds.map! do |bird|
	puts "#{bird} cant fly"
	bird + " cant fly"
end

p birds

