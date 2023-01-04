require "./caesar.rb"

describe "#caesarEncode" do
    it "works with positive number" do
        expect(caesarEncode('bcde', 1)).to eql('abcd')
    end
end