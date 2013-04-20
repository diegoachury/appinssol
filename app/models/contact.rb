class Contact < ActiveRecord::Base
  attr_accessible :ciudad, :comentario, :direccion, :email, :nombre, :telefono
end
