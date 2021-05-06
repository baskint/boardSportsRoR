# spec/activity_type_match_spec.rb
require "activity_type_matcher"

describe ActivityTypeMatcher do
  describe ".match" do
    context "for location with Boat" do
      it "returns Boating for Boating" do
        expect(ActivityTypeMatcher.match("White Bear Township Boating-1")).to eq("Boating")
      end

      it "returns Kiting" do
        expect(ActivityTypeMatcher.match("Cameron County Kite")).to eq("Kiting")
      end

      it "returns Windsurfing" do
        expect(ActivityTypeMatcher.match("Wasco County Windsurf")).to eq("Windsurfing")
      end

      it "returns SUP" do
        expect(ActivityTypeMatcher.match("White Bear Township Sup")).to eq("SUP")
      end
    end
  end
end