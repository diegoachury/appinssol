class Type < ActiveRecord::Base
  belongs_to :category
  attr_accessible :descripcion, :name, :photo, :category_id
  has_many :brand
end
