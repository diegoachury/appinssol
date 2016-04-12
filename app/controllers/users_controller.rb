class UsersController < ApplicationController

 def index
  	@users = User.find(:all, :order => 'sign_in_count DESC')

  end

	def destroy
  User.find(params[:id]).destroy
  flash[:success] = "User destroyed."
  redirect_to :action => :index
end
end
