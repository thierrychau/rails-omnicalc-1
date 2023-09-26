class PagesController < ApplicationController
  def square
    render({ :template => "pages/square" })
  end

  def square_result
    @number_input = params.fetch("number")
    @number_output = @number_input.to_f**2
    render({ :template => "pages/square_result"})
  end

  def square_root
    render({ :template => "pages/square_root" })
  end

  def square_root_result
    @number_input = params.fetch("number")
    @number_output = @number_input.to_f**(0.5)
    render({ :template => "pages/square_root_result"})
  end

  def payment
    render({ :template => "pages/payment" })
  end

  def payment_result
    @apr = params.fetch("user_apr").to_f / 100
    @years = params.fetch("user_years").to_i
    @principal = params.fetch("user_pv").to_i
  
    @number_periods = 12*@years
    @rate_per_period = @apr/12
  
    @payment = (@rate_per_period * @principal) / (1 - (1 + @rate_per_period)**(-@number_periods))
    render({ :template => "pages/payment_result"})
  end

  def random
    render({ :template => "pages/random" })
  end

  def random_resulst
    render({ :template => "pages/random_resulst"})
  end
end
