class Customer < ActiveRecord::Base
   belongs_to :welcome
  attr_accessible :name, :url_photo, :welcome_id
 

end
