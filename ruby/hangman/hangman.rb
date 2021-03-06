class Hangman_game
	attr_reader :word
	attr_accessor :solution
	
	def initialize(word)
		@word = word
		@solution = ""
		@guesses = ""
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

guessed_the_word = false
guess_count = 0

until game.word.length*2 == guess_count
	puts "Guess a letter:"
	user_guess = gets.chomp
	if game.repeat?(user_guess) == true
		puts "You already guessed that, try again"
		guess_count -=1
	else
		game.store_guess(user_guess)
		if game.check_guess(user_guess) == false
			puts "Sorry, guessed wrong"
			game.insert_answer(user_guess)
		else
			puts "good guess!"
			game.insert_answer(user_guess)
		end
	end
	p game.solution
	guess_count += 1
	if game.solution == game.word
		guessed_the_word = true
		break
	end
end
if guessed_the_word
	puts "you did it!!"
else
	puts "you didn't get it. better luck next time, looks like you are going to need it!"
end
