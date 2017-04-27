Rails.application.routes.draw do

get("/flexible/square/:numbers", { :controller => "calculations", :action => "square"})
get("/flexible/square_root/:numbers", { :controller => "calculations", :action => "square_root"})
get("/flexible/payment/:basis_points/:number_of_years/:present_value", { :controller => "calculations", :action => "pmt"})

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
