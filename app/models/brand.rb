class Brand < ActiveRecord::Base
  belongs_to :type
  has_many :quote
  attr_accessible :descripcion, :name, :photo, :ruta_pdf, :type_id
end
