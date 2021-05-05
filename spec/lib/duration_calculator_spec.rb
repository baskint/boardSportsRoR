# spec/string_calculator_spec.rb
require "duration_calculator"

describe DurationCalculator do
  describe ".compute" do
    context "given an hours:minutes:seconds:ms string" do
      it "returns an integer(1) with rounded to minutes" do
        expect(DurationCalculator.compute("00:05:45.3")).to eq(6)
      end

      it "returns an integer(2) with rounded to minutes" do
        expect(DurationCalculator.compute("02:12:50")).to eq(133)
      end

      it "returns integer(3) with rounded to minutes" do
        expect(DurationCalculator.compute("02:23:38")).to eq(144)
      end

      it "returns integer(4) with rounded to minutes" do
        expect(DurationCalculator.compute("00:02:49.5")).to eq(3)
      end
    end
  end
end