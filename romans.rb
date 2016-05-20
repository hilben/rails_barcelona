def convert(number)
  res = ""

  [["X", 10], ["IX", 9], ["V", 5],["IV", 4], ["I", 1]].each do |roman, value|
    while number >= value
      res += roman
      number -= value
    end
  end

  res
end

describe "convert" do
  it { expect(convert(1)).to eq "I" }
  it { expect(convert(2)).to eq "II" }
  it { expect(convert(4)).to eq "IV" }
  it { expect(convert(5)).to eq "V" }
  it { expect(convert(8)).to eq "VIII" }
  it { expect(convert(28)).to eq "XXVIII" }
  it { expect(convert(29)).to eq "XXIX" }
  it { expect(convert(9)).to eq "IX" }

  it { expect(convert(50)).to eq "L" }
  #it { expect(convert(49)).to eq "XLIX" }
end
