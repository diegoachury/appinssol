class HomeController < ApplicationController
  def index
  	  @customers = Customer.all
  	  @welcomes = 	Welcome.all

  	
  end
end
