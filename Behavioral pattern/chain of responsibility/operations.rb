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
