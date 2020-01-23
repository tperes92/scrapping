require_relative '../lib/dark_trader'

describe "cours function" do

  it "ruturn hash" do
    expect(cryptomonnaies(array[0])).to eq("BTC"=>"$8,368.50")
  end
end