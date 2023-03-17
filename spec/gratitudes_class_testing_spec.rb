require 'gratitudes_class_testing'

RSpec.describe Gratitudes do
  it "adds a list of gratitudes" do
    gratitudes = Gratitudes.new
    gratitudes.add("your cat")
    gratitudes.add("nice people")
    expect(gratitudes.format).to eq "Be grateful for: your cat, nice people"
  end
end