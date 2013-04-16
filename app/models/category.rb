class Category < ActiveRecord::Base
  attr_accessible :descripcion, :name, :photo
  has_many :type 
end
