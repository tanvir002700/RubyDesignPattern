class Waiter
  attr_accessor :pizza_builder

  def pizza
    pizza_builder.pizza
  end

  def construct_pizza
    pizza_builder.create_new_pizza
    pizza_builder.build_daugh
    pizza_builder.build_sauce
    pizza_builder.build_toppin
  end
end
