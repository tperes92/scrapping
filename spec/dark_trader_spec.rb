require_relative "../lib/dark_trader"

describe "the cryptomonnaies method" do
    it "should return an array" do
        expect(cryptomonnaies.class).to eq(Array)
    end
    it "should return an array of hashes" do
        expect(cryptomonnaies[0].class).to eq(Hash)
    end
    it "should be an entry called 'BTC'" do
        expect(cryptomonnaies.any? {|h| h['BTC']}).to eq(true)
    end
    it "should be an entry called 'ETH'" do
        expect(cryptomonnaies.any? {|h| h['ETH']}).to eq(true)
    end
    it "should be more than 20 entries" do
        expect(cryptomonnaies.length > 20).to eq(true)
    end
    it "should return float in values" do
        expect(cryptomonnaies[0].fetch("BTC").class).to eq(Float)
    end
end