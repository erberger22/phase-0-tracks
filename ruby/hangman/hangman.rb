class Hangman_game
	
	def initialize(word)
		@word = word
		@solution = []
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
		@solution << "_"
		end
		@solution
	end	
end