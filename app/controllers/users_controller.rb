class UsersController < ApplicationController

 def index
  	@users = User.all

  end

	def destroy
  User.find(params[:id]).destroy
  flash[:success] = "User destroyed."
  redirect_to :action => :index
end
end
