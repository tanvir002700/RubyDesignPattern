module Chain
  def next_chain; end
  def calculate; end
end

class Numbers
  attr_accessor :number1, :number2
  attr_reader :calcuation_wanted

  def initialize(number1, number2, cal_wanted)
    @number1 = number1
    @number2 = number2
    @calcuation_wanted = cal_wanted
  end
end

class AddNumbers
  attr_accessor :next_chain

  def calculate(request)
    if request.calcuation_wanted == :add
      puts "#{request.number1} + #{request.number2}"
      request.number1 + request.number2
    else
      next_chain.calculate(request)
    end
  end
end

class SubtractNumbers
  attr_accessor :next_chain

  def calculate(request)
    if request.calcuation_wanted == :sub
      puts "#{request.number1} - #{request.number2}"
      request.number1 - request.number2
    else
      next_chain.calculate(request)
    end
  end
end

add_chain = AddNumbers.new
sub_chain = SubtractNumbers.new

add_chain.next_chain = sub_chain

request = Numbers.new(2,4, :add)
add_chain.calculate(request)
