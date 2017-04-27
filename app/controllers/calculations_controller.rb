class CalculationsController < ApplicationController
  def square
      @number = params[:numbers].to_f
      @square = @number**2

      render("calculations/square.html.erb")
  end

  def square_root
      @number = params[:numbers].to_f
      @square_root = @number**(0.5)

      render("calculations/square_root.html.erb")

    end


  def pmt
    @rate = (params[:basis_points].to_f)/10000/12
    @apr = (@rate*100*12).round(1)
    @num_payments = (params[:number_of_years].to_f)*12
    @pv = params[:present_value].to_f
    @pmt = ((@rate*@pv)/(1-((1+@rate)**(-1*@num_payments)))).round(2)


    render("calculations/payment.html.erb")

  end
end
