require 'sums_extractor'

describe SumsExtractor do

  describe "#extract_sum" do

    before :each do
      @extracted_sum = SumsExtractor.extract("1 + 1")
    end
    it "returns the sums string in an array" do
      expect(@extracted_sum[0]).to eq "1 + 1"
    end

    it "returns the sum of the sums string in an array" do
      expect(@extracted_sum[1]).to eq 2
    end
  end
end