class HomeController < ApplicationController

  def index
    if seller_signed_in?
      redirect_to :controller => 'site_sale', :action => 'index'      
    end
  	  @customers = Customer.all
  	  @welcomes = 	Welcome.all
      

  	
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
