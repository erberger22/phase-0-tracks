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

puts "Enter a word to be guessed:"
word = gets.chomp



