class Tree < ActiveRecord::Base
   validates :owner_name, presence: true
   default_scope -> {order('street_name asc','adress asc')}
end
