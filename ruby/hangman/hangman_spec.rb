require_relative 'hangman'

describe Hangman_game do
	let (:game) {Hangman_game.new("button")}

	it "stores the string given on initialization" do
		expect(game.word).to eq "button"
	end

	it "makes a blank string of '_' for each letter in word" do
		expect(game.blank_solution).to eq "______"
	end

	it "compares user guess to the guess array" do
		expect(game.repeat?("o")).to eq false
	end

	it "adds user guess to the guess array" do
		expect(game.store_guess("o")).to eq "o"
	end

	it "checkes if user guess is included in the word" do
		expect(game.check_guess("o")).to eq true
	end

	it "inserts the user guess into the correct location, and returns updated solution" do
		expect(game.insert_answer("o")).to eq "____o_"
	end





end

