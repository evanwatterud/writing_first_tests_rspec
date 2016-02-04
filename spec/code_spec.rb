require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

describe "perimeter" do
  it "should return the perimeter given the width and height" do
    result = perimeter(2,3)
    expect(result).to eq(10)
    result = perimeter(3)
    expect(result).to eq(12)
  end
end

describe "average" do
  it "should return the average of the given list of grades" do
    result = average([90, 80, 70])
    expect(result).to eq(80.0)
  end
end

describe "rankings" do
  it "should return students ranked in order given a list of students" do
    result = rankings(["Evan", "Saul"])
    expect(result).to eq("1. Evan\n2. Saul\n")
  end
end

describe "greet" do
  it "should output a greeting to the terminal based on given name and language" do
    expect{ greet("Evan") }.to output(/Hi Evan!/).to_stdout
    expect{ greet("Evan", "italian") }.to output(/Ciao Evan!/).to_stdout
    expect{ greet("Evan", "french") }.to output(/Bonjour Evan!/).to_stdout
    expect{ greet("Evan", "spanish") }.to output(/Hola Evan!/).to_stdout
  end
end

describe "print_puzzle" do
  it "should print a hangman blueprint to the terminal based on given word and guesses" do
    expect{ print_puzzle("Evan") }.to output(/_ _ _ _/).to_stdout
    expect{ print_puzzle("Evan", ["E", "n"]) }.to output(/E _ _ n/).to_stdout
  end
end

describe "divisible_by_three" do
  it "should return whether a given number is divisible by 3" do
    result = divisible_by_three(3)
    expect(result).to eq(true)
    result = divisible_by_three(2)
    expect(result).to eq(false)
  end
end

describe "perfect_square?" do
  it "should return whether the number given is a perfect square unless the number is less than 1" do
    expect(perfect_square?(5)).to eq(false)
    expect(perfect_square?(25)).to eq(true)
    expect{ perfect_square?(0) }.to raise_error(ArgumentError)
  end
end
