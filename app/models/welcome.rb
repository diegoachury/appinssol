class Welcome < ActiveRecord::Base
  attr_accessible :leyenda, :logo, :mensaje, :name 
  has_many :customer
end
