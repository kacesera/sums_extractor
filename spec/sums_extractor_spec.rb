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

    context "Invalid input" do
      it "throws an error when a variable is included" do
        expect{SumsExtractor.extract("a + 3")}.to raise_error("Invalid input; Input must only include numbers and operators")
      end

    end
  end
end