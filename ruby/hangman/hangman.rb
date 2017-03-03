class Hangman_game
	attr_reader :word
	attr_accessor :solution
	
	def initialize(word)
		@word = word
		@solution = ""
		@guesses = ""
	end

	def blank_solution
		blank = ""
		@word.length.times do 
			blank << "_"
		end
		blank
	end

	def repeat?(user_guess)
		if !@guesses.include?(user_guess)
			false
		else
			true
		end
	end

	def store_guess(user_guess)
		@guesses << user_guess
	end

	def check_guess(user_guess)
		if @word.include?(user_guess)
			true
		else
			false
		end
	end

	def insert_answer(user_guess)
		word_count = 0
		until word_count == @word.length
			#if the userguess is the same as the @word(word_count), then it is added to @solution at that location
			if user_guess == @word[word_count]
				@solution[word_count] = user_guess
			#if the @solution(word_count) is empty where there should be a letter or a _, it adds a _
			elsif @solution[word_count]==nil
				@solution[word_count] = "_"
			#if the @solution(word_count) is not empty, it is left unchanged
			else
				@solution[word_count] = @solution[word_count]
			end
		word_count += 1
		end
		@solution
	end	
end

puts "Enter word for game of hangman:"
word = gets.chomp
game = Hangman_game.new(word)






=begin
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


