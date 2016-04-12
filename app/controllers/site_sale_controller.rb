class SiteSaleController < ApplicationController
	before_filter :authenticate_seller!
  def index
    @products = Product.all
     @products = Product.search(params[:search], params[:page])

    respond_to do |format|
      format.html # index.html.erb
      #format.html { redirect_to root_path } #for my controller, i wanted it to be JS only
      format.js
      format.json { render json: @products }
    end
  end
   def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end
end
