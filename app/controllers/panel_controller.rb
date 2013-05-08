class PanelController < ApplicationController
  def index
  	@users = User.limit(5)
  	@contacts = Contact.limit(10)


  end
  #eliminar usuarios
  def destroy
  User.find(params[:id]).destroy
  flash[:success] = "User destroyed."
  redirect_to users_index
end
end
