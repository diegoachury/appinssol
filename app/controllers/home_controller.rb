class HomeController < ApplicationController

  def index
  	  @customers = Customer.all
  	  @welcomes = 	Welcome.all
      flash[:notice] = t(:hello_flash)
      

  	
  end

  def servicio
  	@customers = Customer.all

  end

   def company
  	@customers = Customer.all

  end

  def gestion
    @customers = Customer.all

  end

end
