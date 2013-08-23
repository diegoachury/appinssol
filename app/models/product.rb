class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :codigo_externo, :codigo_interno, :color, :descripcion, :ficha_produccion, :ficha_tecnica, :marca, :nombre, :referencia_marca, :talla
end
