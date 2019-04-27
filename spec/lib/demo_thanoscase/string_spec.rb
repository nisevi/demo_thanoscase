require_relative '../../../lib/demo_thanoscase/string'

RSpec.describe "String class" do
  it "should shorten an even the string to half its size" do
    expect("1234".thanoscase.length).to eq(2)
  end

  it "should shorten an odd the string to half its size plus 1" do
    expect("12345".thanoscase.length).to eq(3)
  end
end