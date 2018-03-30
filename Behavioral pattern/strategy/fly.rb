class Flys
  def fly; end
end

class ItFlys < Flys
  def fly
    return "Flying High"
  end
end

class CantFly < Flys
  def fly
    return "I can't fly"
  end
end
