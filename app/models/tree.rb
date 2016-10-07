class Tree < ActiveRecord::Base
   default_scope -> {order('zip_code asc','street_name asc','adress asc')}
end
