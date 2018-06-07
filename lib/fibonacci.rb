class Fibonacci

attr_accessor :fibonacci_array

  def initialize
    @fibonacci_array = []
    # puts @fibonacci_array
  end

  def divisable_by?(num, div_by_num)
    (num % div_by_num).zero?
  end

  def create_fibonacci_array(first,second,not_exceed)
    @fibonacci_array << first << second
    (1..100).each do |i|
      if @fibonacci_array.last < not_exceed
        n = (@fibonacci_array[-1] + @fibonacci_array[-2])
        @fibonacci_array << n
      end
    end
    @fibonacci_array.delete(@fibonacci_array[-1])
    # @fibonacci_array.delete_if {|x| !divisable_by?(x, 2) }
    # @fibonacci_array.inject(:+)
  end

  def make_even
    @fibonacci_array.delete_if {|x| !divisable_by?(x, 2) }
    # p @fibonacci_array.inject(:+)
    return @fibonacci_array
  end

end
