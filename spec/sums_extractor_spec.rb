require 'sums_extractor'

describe SumsExtractor do

  describe "#extract_sum" do
    it "returns the sums string in an array" do
      expect(SumsExtractor.extract("1 + 1")[0]).to eq "1 + 1"
    end
  end
end