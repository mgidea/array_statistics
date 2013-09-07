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
    ArrayStatistic.new([1,2,3]).standard_dev.should eql(0.82)
  end

  it "find the nth smallest number in array" do
    a=ArrayStatistic.new([2,4,6])
    a.nth_smallest(2).should eql(4)
  end

  it "find the sum of all numbers in the array" do
    ArrayStatistic.new([1,2,3]).sum.should eql(6)
  end

  it "find the product of all elements in the array" do
    ArrayStatistic.new([1,2,3]).product.should eql(6)
  end

  it "finds the difference between the highest and the lowest numbers in an array" do
    ArrayStatistic.new([1,2,3]).difference.should eql(2)
  end

  it  "finds and returns the (n)digit numbers in an array" do
    ArrayStatistic.new([1,200,300,4000, 2]).digit_frequency.should
    eql({
      1 => 2,
      2 => 0,
      3 => 2,
      4 => 1
    })

  end
end


