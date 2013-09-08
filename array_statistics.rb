require 'descriptive_statistics'
# require 'pry'
class ArrayStatistic
  def initialize(array)
    @array = array
  end

  def max
    @array.sort.last
  end

   def min
    @array.sort.first
  end

  def average
    @array.reduce(0){|sum, number| sum + number} / @array.size
  end

  def standard_dev
    @array.standard_deviation.round(2)
  end

  def nth_smallest(number)
    index = number - 1
    @array[index]
  end

  def sum
    @array.reduce(:+)
  end

  def product
    @array.inject(:*)
  end

  def difference
    @array.max - @array.min
  end

  def digit_frequency
    digits = {}
   @array.each do |digit|
      n = digit.to_s.length.to_s
      unless digits.has_key?(n)
      digits[n] = 0
      end
      digits[n] += 1
    end
    digits
  end


end

