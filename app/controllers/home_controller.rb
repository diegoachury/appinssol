class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => [:catalogo]
  def index
  	  @customers = Customer.all
  	  @welcomes = 	Welcome.all
  end
  def catalogo

  end

  def home
      @customers = Customer.all
      @welcomes =   Welcome.all
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
