require 'fibonacci'

describe Fibonacci do

  before(:all) do
    @fbon = Fibonacci.new
  end

  it 'should respond true if a number is divisable by 2' do
    expect(@fbon.divisable_by?(4, 2)).to be true
  end

  it 'should start with 1 then 2' do
    @fbon.create_fibonacci_array(1,2,4000000)
    expect(@fbon.fibonacci_array.first).to eq 1
    expect(@fbon.fibonacci_array[1]).to eq 2
  end

  it 'should not exceed 4 million' do
    expect(@fbon.fibonacci_array.last).to be < 4000000
  end

  it 'should add the two previous numbers to get the next number in the sequence' do
    expect(@fbon.fibonacci_array[-4] + @fbon.fibonacci_array[-3]).to eq @fbon.fibonacci_array[-2]
  end

  it 'should add the even numbers of the sequence together' do
    expect(@fbon.make_even.first).to eq 2
    expect(p @fbon.make_even.inject(:+)).to eq 4613732
  end
end
