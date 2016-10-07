class Tree < ActiveRecord::Base
   default_scope -> {order('street_name asc','adress asc')}
end
