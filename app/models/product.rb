class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :codigo_externo, :imagen, :category_id, :codigo_interno, :color, :descripcion, :ficha_produccion, :ficha_tecnica, :marca, :nombre, :referencia_marca, :talla
def self.search(search)
	if search
		find(:all, :conditions =>['nombre LIKE ? OR codigo_interno LIKE ? OR marca LIKE ? OR referencia_marca LIKE ?', "%#{search}%", "%#{search}%","%#{search}%", "%#{search}%"])
		else
			find(:all)
	end	
end

end
