class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :codigo_externo, :imagen, :precio, :category_id, :codigo_interno, :color, :descripcion, :ficha_produccion, :ficha_tecnica, :marca, :nombre, :referencia_marca, :talla
def self.search(search, page)
	paginate :per_page => 9, :page => page,
	:conditions =>['nombre LIKE ? OR codigo_interno LIKE ? OR marca LIKE ? OR referencia_marca LIKE ?', "%#{search}%", "%#{search}%","%#{search}%", "%#{search}%"],
	:order => 'nombre'
end

end
