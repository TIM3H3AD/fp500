class Tree < ApplicationRecord
   default_scope -> {order('zip_code asc','street_name asc','adress asc')}
end
