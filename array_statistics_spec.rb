require 'rspec'

require_relative 'array_statistics'

Describe ArrayStatistic do
  it "finds the largest number in an array" do
    ArrayStatistic.new([1,2,3]).max.should eql(3)

  end
end
