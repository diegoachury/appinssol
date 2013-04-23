class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :cargo, :pais, :ciudad, :nombre, :apellido, :name_empresa, :nit, :genero, :address_empresa, :telefono, :celular, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :quote

  validates :cargo, :nombre, :name_empresa, :telefono, :celular, :email, :password, :password_confirmation, :presence => true
  validates :email, :uniqueness => true

end
