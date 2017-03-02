class Hangman_game
	attr_reader :word
	attr_accessor :guesses
	
	def initialize(word)
		@word = word
		@guesses = []
		@solution_array = []

	end

	def show_word
		@word
	end

	def word_array
		word_array = @word.split''
	end

	def num_guesses
		@word.length*2
	end
	
	def solution
		word_array.each do
		@solution_array.push"_"
		end
		@solution_array
	end	

	def repeat(user_guess)
		#return false if user guess is new, return true if user guess repeat
		@guesses.include?(user_guess)
	end

	def store_guess(user_guess)
		@guesses << user_guess
	end

	def check_guess(user_guess)
		word_array.include?(user_guess)
	end

	def insert_answer(user_guess)
		solution = self.solution
		counter = 0
		until counter == @word.length
			if word_array[counter] == user_guess 
				solution[counter] = user_guess
			end
			counter += 1
		end
		solution
	end
end
#=begin
puts "Enter a word to be guessed:"
word = gets.chomp
game=Hangman_game.new(word)

guess_count = 0
total_guesses = game.num_guesses
until guess_count == total_guesses
	
	puts "Guess a letter:"
	user_guess = gets.chomp
	if game.repeat(user_guess)
		puts "you already guessed that letter"
		guess_count -= 1
	else
		game.store_guess(user_guess)	
	end

	if game.check_guess(user_guess)
		p game.insert_answer(user_guess)
	else
		puts "sorry, wrong answer!"
		p game.solution
	end
	guess_count += 1
end
=begin
test1 = Hangman_game.new("boy")
p test1.num_guesses
=end


