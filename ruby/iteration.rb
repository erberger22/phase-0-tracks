#Release 0

def farwell
	puts "Bye-bye"
	yield ("alligator")
	puts "In a while, crocodile"
end

farwell { |phrase| puts "see you later, #{phrase}" }

#Release 1

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

p bears 
bears.each do |bear, is_scary|
	puts "scientists say that #{bear} is conclusively #{is_scary}"
end

p bears

#Release 2

array_num = [2, 55, 3, 2, 67, 34]

hash_words = {"yellow"=> "adj", "run" => "vrb", "loud" => "adj", "swim" => "vrb"}

p array_num
array_num.delete_if { |number| number > 30 }
p array_num

p hash_words
hash_words.delete_if { |word, word_type| word_type == "adj"}
p hash_words

array_num = [2, 55, 3, 2, 67, 34]

hash_words = {"yellow"=> "adj", "run" => "vrb", "loud" => "adj", "swim" => "vrb"}

p array_num
array_num.keep_if { |number| number > 30 }
p array_num

p hash_words
hash_words.keep_if { |word, word_type| word_type == "adj"}
p hash_words

array_num = [2, 55, 3, 2, 67, 34]

hash_words = {"yellow"=> "adj", "run" => "vrb", "loud" => "adj", "swim" => "vrb"}

p array_num
p array_num.fetch(2)
p array_num

p hash_words
p hash_words.assoc("swim")
p hash_words

array_num = [2, 55, 3, 2, 67, 34]

hash_words = {"yellow"=> "adj", "run" => "vrb", "loud" => "adj", "swim" => "vrb"}

p array_num
new_array = array_num.take_while { |number| number < 60 }
p array_num
p new_array

p hash_words
new_hash = hash_words.reject { |word, word_type| word_type == "adj"}
p hash_words
p new_hash



