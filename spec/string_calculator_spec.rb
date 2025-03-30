require 'rspec'
require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself for a single input" do
      expect(StringCalculator.add("1")).to eq(1)
      expect(StringCalculator.add("5")).to eq(5)
    end

    it "returns sum of two comma-separated numbers" do
      expect(StringCalculator.add("1,2")).to eq(3)
      expect(StringCalculator.add("3,5")).to eq(8)
    end

    it "handles an unknown amount of numbers" do
      expect(StringCalculator.add("1,2,3")).to eq(6)
      expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end
  end
end