class Quote < ActiveRecord::Base
  belongs_to :brand
  belongs_to :type
  belongs_to :user
  attr_accessible :ciudad, :comentario, :direccion, :email, :nombre, :telefono, :type_id, :brand_id, :user_id
end
