class Contact < ActiveRecord::Base
  attr_accessible :ciudad, :comentario, :direccion, :email, :nombre, :telefono
  validates :ciudad, :comentario, :direccion, :email, :nombre, :telefono, :presence => true
 
end
