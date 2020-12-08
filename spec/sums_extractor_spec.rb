require 'sums_extractor'

describe SumsExtractor do

  describe "#extract_sum" do

    before :each do
      @extracted_sum = SumsExtractor.extract("1 + 1")
    end
    it "returns the sums string in an array" do
      expect(@extracted_sum[0]).to eq "1 + 1"
    end

    context "String uses addition" do
      it "returns the sum of the sums string in an array" do
        expect(@extracted_sum[1]).to eq 2
      end
    end
    
    context "String uses subtraction" do
      it "returns the sum of the sums string in an array" do
        expect(SumsExtractor.extract("1 - 1")[1]).to eq 0
      end
    end

    context "String uses division" do
      it "returns the sum of the sums string in an array" do
        expect(SumsExtractor.extract("1 / 1")[1]).to eq 1
      end
    end

    context "String uses multiplication" do
      it "returns the sum of the sums string in an array" do
        expect(SumsExtractor.extract("1 * 2")[1]).to eq 2
      end
    end
  end
end