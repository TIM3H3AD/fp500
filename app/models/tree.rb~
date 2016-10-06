class Tree < ActiveRecord::Base
   validates :owner_name, presence: true
   validates :owner_phone, presence: true
   default_scope -> {order('zip_code asc')}
end
