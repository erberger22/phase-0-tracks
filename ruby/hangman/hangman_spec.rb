require_relative 'hangman'

describe Hangman_game do
	let (:game) {Hangman_game.new("button")}

	it "stores the string given on initialization" do
		expect(game.word).to eq "button"
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
		expect(game.insert_answer("t")).to eq "__tt__"
	end

	it "returns an updated solution after multiple guesses" do
		expect(game.insert_answer("t")).to eq "__tt__"
		expect(game.insert_answer("n")).to eq "__tt_n"
	end

end

