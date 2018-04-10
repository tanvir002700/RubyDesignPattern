class Numbers
  attr_accessor :number1, :number2
  attr_reader :calcuation_wanted

  def initialize(number1, number2, cal_wanted)
    @number1 = number1
    @number2 = number2
    @calcuation_wanted = cal_wanted
  end
end
