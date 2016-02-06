
require 'spec_helper'

describe "#caesar_cipher" do
  it "shifts letters of both cases" do
    expect(caesar_cipher("aBc", 2)).to eq("cDe")
  end
  
  it "shifts over the end of the alphabet" do
    expect(caesar_cipher("xyz", 5)).to eq("cde")
  end
  
  it "does not shift non-letters" do
    expect(caesar_cipher("Abc, a-b_c's!", 2)).to eq("Cde, c-d_e'u!")
  end
  
  it "shifts backwards and over alphabet if given negative shift" do
    expect(caesar_cipher("abcxyz", -5)).to eq("vwxstu")
  end
  
  it "shifts properly when given a shift of 26 or greater" do
    expect(caesar_cipher("aBc", 27)).to eq("bCd")
  end
  
  it "shifts properly when given a shift of -26 or less" do
    expect(caesar_cipher("aBc", -28)).to eq ("yZa")
  end
end