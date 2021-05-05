# spec/string_calculator_spec.rb
require "duration_calculator"

describe DurationCalculator do
  describe ".compute" do
    context "given an hours:minutes:seconds string" do
      it "returns an integer with rounded to minutes" do
        expect(DurationCalculator.compute("00:05:45.3")).to eq(6)
      end
    end
  end
end