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

end
