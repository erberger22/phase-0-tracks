require_relative 'hangman2'

describe Hangman_game do
	let (:game) {Hangman_game.new("button")}

	it "Entered word is stored in initialize" do
		expect(game.word).to eq "button"
	end

	it "Blank solution is stored in initialize that is equal length to entered word" do
		expect(game.solution).to eq " _ _ _ _ _ _"
	end

	it "number of guesses equals twice the length of the word" do
		expect(game.num_guess).to eq "button".length * 2
	end

