class Brand < ActiveRecord::Base
  belongs_to :type
  attr_accessible :descripcion, :name, :photo, :ruta_pdf, :type_id
end
