require 'rspec'
require 'descriptive_statistics'

require_relative 'array_statistics'

describe ArrayStatistic do
  it "finds the largest number in an array" do
    ArrayStatistic.new([1,2,3]).max.should eql(3)
  end

  it "find the smallest the smallest in array" do
    ArrayStatistic.new([1,2,3]).min.should eql(1)
  end

  it "find the average of all numbers in array" do
    ArrayStatistic.new([1,2,3]).average.should eql(2)
  end

  it "find the standard deviation of all numbers in array" do
    ArrayStatistic.new([1,2,3]).standard_deviation.should eql((2/3)**0.5)
  end

  it "find the nth smallest number in array" do
    a=ArrayStatistic.new([2,4,6])
    a.nth_smallest(2).should eql(4)
  end
end
