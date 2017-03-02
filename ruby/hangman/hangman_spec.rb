require_relative 'hangman'

describe Hangman_game do
	let (:game) {Hangman_game.new("button")}

	it "stores the string given on initialization" do
		expect(game.show_word).to eq "button"
	end

	it "returns an array where each element is a letter in the word" do
		expect(game.word_array).to eq ["b", "u", "t", "t", "o", "n"]
	end

	it "guess number value should equal length of the word * 2" do
		expect(game.num_guesses).to eq 12
	end

	it "makes a blank array of '_' for each letter in word" do
		expect(game.solution).to eq ["_","_","_","_","_","_"]
	end




end

